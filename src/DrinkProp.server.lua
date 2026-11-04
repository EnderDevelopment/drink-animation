-- Drink Prop Script

local function createDrinkProp()
    local prop = Instance.new("Part")
    prop.Name = "DrinkProp"
    prop.Size = Vector3.new(1, 2, 1)
    prop.Position = Vector3.new(0, 5, 0)
    prop.Anchored = true
    prop.CanCollide = true

    local mesh = Instance.new("SpecialMesh", prop)
    mesh.MeshType = Enum.MeshType.FileMesh
    mesh.MeshId = "rbxassetid://YOUR_MESH_ID"

    prop.Parent = workspace
end

createDrinkProp()