# vagrantfiles

## Configuration

- Port forwarding

  - 8888: for using jupyter
  - 8080: for http test
  - 4000: for DB server test
  - 3000: for react app
  - 8000: for http local host

- Shared folder

  - Host:Guest
    - ~/temp : /home/vagrant/temp

- Environments
  - ubuntu2004
  - zsh
    - default zshrc is [here](https://github.com/okojomoeko/dotfiles)
  - docker
  - docker-compose
  - npm
  - nodejs
  - Anaconda3

## Requirements

### Host OS Folder Structure

- directory
  - ~/temp

### Vagrant plugins

- vagrant-disksize: `vagrant plugin install vagrant-disksize`

### Host OS Setting

- Open PowerShell as administrator and set behavior and check
  - `fsutil behavior set SymlinkEvaluation L2L:1 R2R:1 L2R:1 R2L:1`
  - `fsutil behavior query symlinkevaluation`

## Usage

`$ vagrant up --provision`
