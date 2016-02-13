execute 'apt-get update' do
  command 'apt-get update -y'
end

execute 'set jst time zone' do
  command 'cp /etc/localtime /etc/localtime.org'
  command 'ln -sf  /usr/share/zoneinfo/Asia/Tokyo /etc/localtime'
end

package 'dbus' do
    action :install
end
