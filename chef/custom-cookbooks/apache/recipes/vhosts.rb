include_recipe "apache2"

web_app "lamp" do
  server_name "lamp.local"
  server_aliases ["lamp.local"]
  docroot "/vagrant/public_html/"
  directory_index ["index.html", "index.php"]
  allow_override "all"
  cookbook 'apache2'
end

web_app "wwwlamp" do
  server_name "www.lamp.local"
  server_aliases ["www.lamp.local"]
  docroot "/vagrant/public_html/"
  directory_index ["index.html", "index.php"]
  allow_override "all"
  cookbook 'apache2'
end