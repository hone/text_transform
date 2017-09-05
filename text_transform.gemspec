# encoding: utf-8

Gem::Specification.new do |s|
  s.name         = 'text_transform'
  s.version      = '0.1.0'
  s.authors      = ['Ruby Developer']
  s.summary      = "A Helix project"
  s.files        = Dir['{lib/**/*,[A-Z]*}']

  s.platform     = Gem::Platform.local
  s.require_path = 'lib'

  s.add_dependency 'helix_runtime', '~> 0.6.3'
  s.add_development_dependency 'rspec', '~> 3.6'
end
