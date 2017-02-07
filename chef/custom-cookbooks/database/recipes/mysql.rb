mysql_service 'default' do
  port '3306'
  version '5.6'
  socket '/run/mysqld/mysqld.sock'
  initial_root_password "#{node['mysql']['server_root_password']}"
  action [:create, :start]
end

# import a sql dump
execute "import" do
    command "gunzip < /vagrant/chef/data_bags/db.sql.gz | mysql -u root -p\"#{node['mysql']['server_root_password']}\""
    action :run
end