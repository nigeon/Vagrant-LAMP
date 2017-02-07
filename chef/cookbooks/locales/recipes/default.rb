# Install language package
node['locales']['locales'].each do |locale|
    execute "locale-gen #{locale}" do
        command "locale-gen #{locale}"
        action :run
    end
end