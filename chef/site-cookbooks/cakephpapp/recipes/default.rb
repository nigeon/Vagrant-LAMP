include_recipe "database::mysql"

# Store this in a variable so we don't keep repeating it
mysql_connection_info = {
    :host => "localhost",
    :username => 'root',
    # automatically get this from the override_attributes call!
    :password => node['mysql']['server_root_password']
}

# my_database = database name
mysql_database 'cashpiggy' do
  connection mysql_connection_info
  action :create
end

#Schema import
execute "import-mysql-schema" do
	#Import
	command "printf 'y\ny\n' | php /vagrant/app/Console/cake.php schema create"
	#command "php /vagrant/app/Console/cake.php Migrations.migration run all"
end

tmp = "/vagrant"
[ tmp + '/app/tmp',
  tmp + '/app/tmp/cache',
  tmp + '/app/tmp/cache/models',
  tmp + '/app/tmp/cache/persistent',
  tmp + '/app/tmp/cache/views',
  tmp + '/app/tmp/logs',
  tmp + '/app/tmp/sessions',
  tmp + '/app/tmp/tests' ].each do |dir|
    directory dir do
      owner "vagrant"
      group "vagrant"
      mode "0777"
      action :create
    end
end