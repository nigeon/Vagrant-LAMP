include_recipe "apache2"

web_app "wwwlamp" do
  server_name "www.lamp.local"
  server_aliases ["www.lamp.local"]
  allow_override "all"
  directory_index ["index.html", "index.php"]
  docroot "/vagrant/"
end

web_app "lamp" do
  server_name "lamp.local"
  server_aliases ["lamp.local"]
  allow_override "all"
  directory_index ["index.html", "index.php"]
  docroot "/vagrant/"
end