#! /bin/bash
# todo: create project dir, init project, create repo, git ignore, open in vscode 

arg=$1

function echoE() {
  echo -e "\n=========================================================================="
  echo -e "$1"
  echo -e "==========================================================================\n"
  sleep 1.5
}

function checkForPrograms() {
  echoE "Please ensure you have GIT and HUB installed before continuing."
}

function mkProjectDir() {
  local path="Desktop/Projects/$arg"
  echoE "Making new project directory."
  if [[ -e '/home' ]]; then
    mkdir -v "/home/$USER/$path"
    cd "/home/$USER/$path"
  else 
    mkdir -v "/User/pearl/$path"
    cd "/User/pearl/$path"
  fi
}

function gitInit() {
  echoE "Initializing git repository and adding remote repo"
  git init
  hub create $arg
  # touch "README.md" ".gitignore" 
  # echo -e "node_modules/" >> ".gitignore"
}

function openProject() {
  echoE "Opening project in VSCODE."
  code .
}

function checkArgs() {
  if [[ $arg =~ [-_a-zA-Z0-9] ]]; then
    checkForPrograms
    mkProjectDir
    gitInit
    openProject
  else
    echo -e "Filename should contain only letters (a-z), numbers (1-9), dashes (-/_)."
  fi
}

function init() {
  checkArgs
}

init
