io.write("Enter Password: ")

local userInput = io.read()

local function createFile()
    local file = io.open("password_" .. os.date("%Y-%m-%d_%H-%M-%S") .. ".txt", "w")
    print("Password file generated!")
    file:write(userInput)
    file:close()


end
createFile()



local function deleteAllPasswordLogFiles()

    print("Would you like to delete all of the password files? YOU CANNOT GET THE FILES BACK.")
    print("")
    print("Type '!del' if you would like to delete all of them.")

    local input = io.read()

    if input == "!del" then
        local files = io.popen("ls *.txt") -- Use the io.popen() function to list all .txt files in the current directory
        local fileList = files:read("*all") -- Read the entire output of the command and store it in a variable
        files:close() -- Close the file handle
        
        for file in string.gmatch(fileList, "%S+") do -- Iterate through the list of files
            os.remove(file) -- Use the os.remove() function to delete each file
        end

        print("All password files have been deleted.")

    else
        print("Ok, generated files will not be deleted.")


    end
end
deleteAllPasswordLogFiles()

local function commands()
    print("Type !cmd to reveal all ProPass commands")
    print("Or type clear to clear the entire console.")
    
    local input = io.read()

    if input == "!cmd" then
        print("")
        print("!cmd = show all ProVault Commands")
        print("!del - while removing all password files")
        print("!privacy - view the privacy policy")
        print("!clear - clear the console")
        print("")
        print("")


        local input = io.read()

        if input == "!privacy" then

            print("")
            print("ProVault Privacy Policy")
            print("")

            print("Data colection")
            print("No data is collected from this app.")
            print(" ")

            print("Password Storing: ")
            print("You and only you can see your passwords. I cannot see your passwords, there not in a server. They are on your device")

            local input = io.read()

            if input == "test" then
                print("J")
            end
        end
    end
end
commands()

local function clearConsole()

    io.write("Type 'clear' to clear the console: ")

    local input = io.read()

    if input == "clear" then

        os.execute("cls")
        os.execute("clear")

    end
end
clearConsole()
