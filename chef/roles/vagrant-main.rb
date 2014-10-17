# Name of the role should match the name of the file
name "vagrant-main"

default_attributes(
    "build_essential" => {
        "compiletime" => true
    }
)

override_attributes(
    "mysql" => {
        "server_root_password" => '123123',
        "server_repl_password" => '123123',
        "server_debian_password" => '123123',
        "allow_remote_root" => true
    },
    "apache" => {
        "user"  => "vagrant",
        "group" => "vagrant"
    }
)

# Run list function we mentioned earlier
run_list(
    "recipe[apt]",
    "recipe[openssl]",
    "recipe[apache2]",
    "recipe[apache2::mod_php5]",
    "recipe[mysql]",
    "recipe[mysql::server]",
    "recipe[php]",
    "recipe[php::module_mysql]",
    "recipe[php::module_curl]",
    "recipe[php::module_memcache]",
    "recipe[php2]", #xdebug & pear Mail
    "recipe[database::mysql]",
    "recipe[apache2::vhosts]", #Virtual host creation
    #"recipe[cakephpapp]", #Tmp directories permissions & cake schema import
    "recipe[zip]"
)