Vagrant LAMP
============

Vagrant LAMP machine including:
- "recipe[apt]"
- "recipe[openssl]"
- "recipe[apache2]"
- "recipe[apache2::mod_php5]"
- "recipe[mysql]"
- "recipe[mysql::server]"
- "recipe[php]"
- "recipe[php::module_mysql]"
- "recipe[php::module_curl]"
- "recipe[php::module_memcache]"
- "recipe[php2]" #xdebug & pear Mail
- "recipe[database::mysql]"
- "recipe[apache2::vhosts]" #Virtual host creation
- #"recipe[cakephpapp]", #Tmp directories permissions & cake schema import
- "recipe[zip]"


Instructions
------------

1. Install vagrant (http://www.vagrantup.com/)
2. Instal VirtualBox
3. Clone this repo
4. vagrant up
5. Edit your hosts file to point lamp.local and www.lamp.local at 127.0.0.1
6. Check your browser at http://lamp.local:8080/
