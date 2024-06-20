# Get the existing PATH
original_path <- Sys.getenv("PATH")

# Add the path to the directories containing VSCode's executable and pandoc (among others)
new_path <- paste(original_path, "/usr/local/bin:/opt/homebrew/bin", sep=":")

# Set the new PATH
Sys.setenv(PATH = new_path)

# Set the default editor to vscode
options(editor="code")