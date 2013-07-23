Run Node.JS in Vagrant
=====

1. Install [VirtualBox](https://www.virtualbox.org/) && [Vagrant](http://www.vagrantup.com/).
1. Clone this repo (recursively, there are some submodules)
1. Open terminal if its not already open and cd to the cloned repos directory.
1. Run the following commands:

```
vagrant up
vagrant ssh
node /vagrant/apps/hello-world
```

Congratulations! You've just told the world hello from Vagrant using Node.js!

The VM will be accessible at `192.168.99.99`