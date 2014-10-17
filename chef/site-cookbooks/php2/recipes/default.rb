include_recipe "php"

php_pear_channel 'pear.php.net' do
  action :update
end

php_pear_channel 'pecl.php.net' do
  action :update
end

package "php-mail" do
    action :install
end

# install the xdebug pecl
php_pear "xdebug" do
  # Specify that xdebug.so must be loaded as a zend extension
  zend_extensions ['xdebug.so']
  action :install
end

#Setup php.ini
template "/etc/php5/conf.d/php.ini" do
  source "php.ini.erb"
  owner "root"
  group "root"
  mode 0644
end

#Setup xdebug.ini
template "/etc/php5/conf.d/xdebug.ini" do
  source "xdebug.ini.erb"
  owner "root"
  group "root"
  mode 0644
end