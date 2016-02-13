execute "wget elasticsearch rpm" do
  command "wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -"
end

file "create /etc/apt/sources.list.d/elasticsearch.list" do
  path '/etc/apt/sources.list.d/elasticsearch.list'
  content "deb #{ENV['ES_DEB_PATH']}"
end

execute 'apt-get update' do
  command 'apt-get update -y'
end

package 'elasticsearch' do
    action :install
end

service 'elasticsearch' do
  action [:enable, :restart]
  name 'elasticsearch'
end