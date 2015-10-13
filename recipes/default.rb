
group 'docker' do
  action [:create, :modify]
  members node['docker-base']['user']
  append true
end

docker_service 'default' do
  version node['docker-base']['version']
  group 'docker'
  action [:create, :start]
end
