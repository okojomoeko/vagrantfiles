# vagrantfiles

## Requirements

- directory
  - ~/repos
  - ~/temp
- zsh
  - ~/repos/dotfiles/zsh/.zshrc
  - ~/repos/dotfiles/zsh/.zsh_aliases

## Configuration

- Port forwarding

  - 8888: for using jupyter
  - 8080: for http test
  - 4000: for DB server test

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
    - grant access permission ```sudo chown -R vagrant /home/vagrant/libs/anaconda3```

## Requirements

- vagrant-disksize: `vagrant plugin install vagrant-disksize`

## Usage

`$ vagrant up --provision`
