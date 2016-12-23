#
# Cookbook Name:: postgres95
# Recipe:: default
#
# Copyright 2016, Terminus
#
# All rights reserved - Do Not Redistribute
#


if platform_family?('rhel')

	bash 'postgresql-95-rhel' do
	  user 'root'
	  cwd '/tmp'
	  code <<-EOH
	  rpm -Uvh https://download.postgresql.org/pub/repos/yum/9.5/redhat/rhel-6-x86_64/pgdg-ami201503-95-9.5-3.noarch.rpm
	  yum -y install postgresql95
	  EOH
	end


else


	bash 'postgresql-95-ubuntu' do
	  	user 'root'
	  	cwd '/tmp'
	  	code <<-EOH
	  	sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
		wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
		apt-get update
		apt-get -y install postgresql-server-dev-9.5
	  	EOH
	end

end