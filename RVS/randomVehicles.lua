local vehicles = {
    "adder",
    "comet2",
    "elegy2",
    "f620",
    "italigtb",
    -- Add more vehicle names here. I have not tried this with add-on vehicles, but I am sure it will work just fine if you add the name found in your vehicles files of the vehicle you want to add.
}

local isSpawningEnabled = false
local spawnThread = nil

function SpawnRandomVehicle()
    local randomVehicle = vehicles[math.random(1, #vehicles)]
    local playerCoords = GetEntityCoords(PlayerPedId())

    local spawnCoords = {
        x = playerCoords.x + math.random(-50, 50),
        y = playerCoords.y + math.random(-50, 50),
        z = playerCoords.z + 1.0
    }

    local heading = math.random(0, 360)

    local vehicleHash = GetHashKey(randomVehicle)
    RequestModel(vehicleHash)
    while not HasModelLoaded(vehicleHash) do
        Citizen.Wait(0)
    end

    local spawnedVehicle = CreateVehicle(vehicleHash, spawnCoords.x, spawnCoords.y, spawnCoords.z, heading, true, false)
    SetEntityAsNoLongerNeeded(spawnedVehicle)

    print("Spawned a random vehicle: " .. randomVehicle)
end

RegisterCommand("startrando", function()
    if not isSpawningEnabled then
        isSpawningEnabled = true
        print("Random vehicle spawning started.")
        
        spawnThread = Citizen.CreateThread(function()
            while isSpawningEnabled do
                local spawnInterval = math.random(30000, 120000) -- Random interval between 30s to 2 minutes
                Citizen.Wait(spawnInterval)
                if isSpawningEnabled then
                    SpawnRandomVehicle()
                end
            end
        end)
    else
        print("Random vehicle spawning is already active.")
    end
end)

RegisterCommand("stoprando", function()
    if isSpawningEnabled then
        isSpawningEnabled = false
        print("Random vehicle spawning stopped.")
        if spawnThread ~= nil then
            Citizen.Wait(1000) -- Wait for the spawning thread to complete its current iteration
            Citizen.KillThread(spawnThread)
            spawnThread = nil
        end
    else
        print("Random vehicle spawning is not active.")
    end
end)
