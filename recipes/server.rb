#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2018 The Authors, All Rights Reserved.
#
package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
	content "<h1>Hello, world!</h1>'
		<h3>Hostname:#{node['hostname']} </h3>
		<h3>IP Address: #{node['ipaddress']}</h3>
"
end

service 'httpd' do
	action [ :enable, :start ]
end
