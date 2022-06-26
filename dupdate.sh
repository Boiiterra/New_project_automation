#!/bin/bash

# Update data in .env file
# Do not source this file, it will be used when data is changed (username, tocken/password, path to projects)
# To use this script type in console (You need to be in this folder): ./dupdate.sh

function change_data() {
    cd ~/.local/bin
    touch .newproj.env
    echo 'GHUSERNAME="'$gh_user'"' > .newproj.env
    echo 'GHPASSTOK="'$gh_pt'"' >> .newproj.env
    echo 'PROJPATH="'$proj_path'"' >> .newproj.env
    echo "Data updated in .newproj.env file in '"$PWD"' successfully"
    echo "All projects created using this command will be stored under '$proj_path' and remote repositories will be created under user '$gh_user'."
}

echo "If data is correct it will be stored in .newproj.env file in /home/`whoami`/.local/bin directory (without manipulating PATH variable)"

read -p "Enter your GitHub username -> " gh_user

read -p "Enter your GitHub token (or password) -> " gh_pt # GitHub token/password

read -p "Enter your projects folder (ex. /home/`whoami`/...) -> " proj_path

clear

echo "Now all your projects will be created in '"$proj_path"' and posted under user: '"$gh_user"' token/password -> '$gh_pt'"

read -p "Is this data correct? (y/n) " yn

clear

case $yn in
    [Yy]* ) change_data;;
    [Nn]* ) echo "No data is saved. To save data do it manually or rerun the script";;
    * ) echo "Please answer 'y' or 'n' next time you run this script or save data manually.";;
esac