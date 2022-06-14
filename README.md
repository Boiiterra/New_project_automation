# New project automation

This project automates creation of the new ones. \
I created it for myself and for linux so if it doesn't work for you just `make it yours`.

# Installation

<br>

## Linux

<br>

### Automatic

```shell
git clone git@github.com:TerraBoii/New_project_automation.git
cd New_project_automation
./npjsetup.sh
```

<br>

### Manual

```shell
git clone git@github.com:TerraBoii/New_project_automation.git
cd New_project_automation
cp ./newproj ~/.local/bin
cp ./crrogh.py ~/.local/bin
cd ~/.local/bin
touch .newproj.env
```
Then open `.newproj.env` file and enter data like this:
```
GHUSERNAME="Your GitHub username"
GHPASSTOK="Your Personal Access Token or password"
PROJPATH="Path to projects folder"
```

# Usage

<br>

## Linux
```shell
newproj <project name> # To create project locally and remotely
newproj -h # For help
newproj --help # For help
newproj <project name> -l # To create project locally
newproj <project name> --locale # To create project locally
```