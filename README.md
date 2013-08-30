# A Virtual Machine for Ruby on Rails Application Development

## Introduction

This project automates the setup of a development environment for general Ruby on Rails application development. 

Inspired by the book ["Deploying Rails"](http://pragprog.com/book/cbdepra/deploying-rails) and fxn's [rails-dev-box](https://github.com/rails/rails-dev-box)

The setup of the box is aimed to be as simple as possible. That's why provisioning using shell (neither Chef or Puppet).

## Requirements

* [VirtualBox](https://www.virtualbox.org)

* [Vagrant](http://vagrantup.com)

## How To Build The Virtual Machine

Building the virtual machine is this easy:

    host $ git clone https://github.com/dmarquezbh/rails-vimgrant.git
    host $ cd rails-vimgrant
    host $ vagrant up

If the base box is not present that command fetches it first. 

    host $ vagrant ssh
    Welcome to Ubuntu 12.04 LTS (GNU/Linux 3.2.0-23-generic-pae i686)
    ...
    vagrant@precise32:~$ 

Port 3000 in the host computer is forwarded to port 3000 in the virtual machine. Thus, applications running in the virtual machine can be accessed via localhost:3000 in the host computer.

## What's In The Box

* Git

* SQLite3

* RVM (with ruby 2.0.0 installed)

* Rails 4.0.0

* Vim (with rails-vim plugin installed)


## Recommended Workflow

The recommended workflow is

* edit files in the guest machine through ssh using vim the best editor of all

* run within the virtual machine


## Virtual Machine Management

When done just log out with and suspend the virtual machine

    host $ vagrant suspend

then, resume to hack again

    host $ vagrant resume

Run

    host $ vagrant halt

to shutdown the virtual machine, and

    host $ vagrant up

to boot it again.

You can find out the state of a virtual machine anytime by invoking

    host $ vagrant status

Finally, to completely wipe the virtual machine from the disk **destroying all its contents**:

    host $ vagrant destroy # DANGER: all is gone

Please check the [Vagrant documentation](http://vagrantup.com/v2/getting-started/) for more information on Vagrant.
