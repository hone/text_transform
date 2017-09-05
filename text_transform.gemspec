# encoding: utf-8

Gem::Specification.new do |s|
  s.name         = 'text_transform'
  s.version      = '0.1.0'
  s.authors      = ['Godfrey Chan', 'Terence Lee']
  s.email        = 'hone02@gmail.com'
  s.summary      = "Transform text using the power of helix/rust"
  s.files        = Dir['{lib/**/*,[A-Z]*}'] - Dir['Cargo.*', 'Gemfile.lock']

  s.platform     = Gem::Platform.local
  s.require_path = 'lib'

  s.add_dependency 'helix_runtime', '~> 0.6.3'
  s.add_development_dependency 'rspec', '~> 3.6'
end
