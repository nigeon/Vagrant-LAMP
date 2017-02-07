name "vagrant_main"

default_attributes(
    "build_essential" => {
        "compiletime" => true
    }
)

override_attributes(
    "apache" => {
        "user"  => "vagrant",
        "group" => "vagrant",
        "listen" => ["80", "443"]
    },
    "mysql" => {
        "server_root_password" => '123123',
        "allow_remote_root" => true
    }
)

run_list(
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
)