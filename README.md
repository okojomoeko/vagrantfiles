# vagrantfiles

## Configuration

- Port forwarding

  - 8888: for using jupyter
  - 8080: for http test
  - 4000: for DB server test
  - 3000: for react app

- Shared folder

  - Host:Guest
    - ~/repos : /home/vagrant/repos
    - ~/temp : /home/vagrant/temp

- Install
  - wget
  - zsh
  - docker
  - docker-compose
  - npm
  - nodejs
  - Anaconda3
    - grant access permission `sudo chown -R vagrant /home/vagrant/libs/anaconda3`

## Requirements

### Host OS Folder Structure

- directory
  - ~/repos
  - ~/temp
- zsh
  - ~/repos/dotfiles/zsh/.zshrc
  - ~/repos/dotfiles/zsh/.zsh_aliases

### Vagrant plugins

- vagrant-disksize: `vagrant plugin install vagrant-disksize`

### Host OS Setting

- Open PowerShell as administrator and set behavior and check
  - `fsutil behavior set SymlinkEvaluation L2L:1 R2R:1 L2R:1 R2L:1`
  - `fsutil behavior query symlinkevaluation`

## Usage

`$ vagrant up --provision`
