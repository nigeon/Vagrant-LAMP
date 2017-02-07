include_recipe "php"

package "php5-mysql" do
  action :install
end

package "php5-curl" do
  action :install
end

package "php5-memcache" do
  action :install
end

package "php5-gd" do
  action :install
end

php_pear_channel 'pear.php.net' do
  action :update
end

php_pear_channel 'pecl.php.net' do
  action :update
end

package "php-mail" do
    action :install
end

package "php-mail-mime" do
    action :install
end

php_pear "xdebug" do
  # Specify that xdebug.so must be loaded as a zend extension
  zend_extensions ['xdebug.so']
  action :install
end

#Setup php.ini
template "/etc/php5/apache2/php.ini" do
  source "php.ini.erb"
  owner "root"
  group "root"
  mode 0644
end

#Setup xdebug.ini
template "/etc/php5/mods-available/xdebug.ini" do
  source "xdebug.ini.erb"
  owner "root"
  group "root"
  mode 0644
end