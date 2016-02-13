script_dir = File.expand_path(File.dirname(__FILE__))

ENV['ES_DEB_PATH'] = 'http://packages.elastic.co/elasticsearch/2.x/debian stable main'

include_recipe "#{script_dir}/debian/setup.rb"
include_recipe "#{script_dir}/common/java.rb"
include_recipe "#{script_dir}/debian/elasticsearch.rb"