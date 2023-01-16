
io.write("Enter password for store:")

local input = io.read()


local function createPasswordSave()

    local file io.open("savedpassword.txt", "w")

    file:write(input)
    file:close()
end
createPasswordSave()