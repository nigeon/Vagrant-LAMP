Vagrant LAMP
============

Default LAMP development stack configuration for Vagrant.

Requrements
-----------

* Virtualbox
* Vagrant


Recipes included
-----------------

"recipe[apt]",
"recipe[openssl]",
"recipe[apache2]",
"recipe[apache2::mod_php5]",
"recipe[apache2::mod_rewrite]",
"recipe[apache2::mod_ssl]",
"recipe[php]",
"recipe[php2]", #Php modules (mysql,curl,memcache,gf,xdebug & pear Mail)
"recipe[composer]",
"recipe[gettext]",
"recipe[locales]",
"recipe[zip]",
"recipe[apache::vhosts]",
"recipe[database::mysql]"


Installation:
-------------

Download and install [VirtualBox](http://www.virtualbox.org/)

Download and install [vagrant](http://vagrantup.com/)

Clone this repository

Go to the repository folder and launch the box

    $ cd [repo]
    $ vagrant up

Edit your hosts file to point lamp.local and www.lamp.local at 127.0.0.1

Check your browser at http://lamp.local:8080/