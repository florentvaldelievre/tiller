gem 'tiller', :git => 'git://github.com/markround/tiller.git'

Gem::Specification.new do |s|
  s.name = 'tiller'
  s.version = '0.1.3'
  s.date = '2014-09-19'
  s.summary = 'Dynamic configuration generation for Docker'
  s.description = 'A tool to create configuration files in Docker containers from a variety of sources. See https://github.com/markround/tiller for examples and documentation.'
  s.authors = ['Mark Round']
  s.email = 'github@markround.com'
  s.files = %w(
    lib/tiller/datasource.rb
    lib/tiller/templatesource.rb
    lib/tiller/data/file.rb
    lib/tiller/data/environment.rb
    lib/tiller/data/random.rb
    lib/tiller/template/file.rb
    examples/etc/tiller/common.yaml
    examples/etc/tiller/environments/production.yaml
    examples/etc/tiller/environments/staging.yaml
    examples/etc/tiller/templates/sensu_client.erb
    examples/lib/tiller/data/dummy.rb
    examples/lib/tiller/data/network.rb
    examples/lib/tiller/template/dummy.rb
  )
  s.executables << 'tiller'
  s.homepage =
      'http://www.markround.com'
  s.license = 'MIT'
  s.metadata = { 'source' => 'https://github.com/markround/tiller' }
end
