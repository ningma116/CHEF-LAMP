package 'apache2' do
        action :install
end

template "/etc/apache2/sites-available/000-default.conf" do
	source "000-default.conf.erb"
	mode "0755"
end

template "/etc/apache2/sites-enabled/000-default.conf" do
	source "000-default.conf.erb"
	mode "0755"
end

service 'apache2' do
  supports :status => true
  action [:enable, :start]
end

