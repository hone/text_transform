require 'fileutils'

puts `gem build text_transform.gemspec`

puts ARGV[0] if ARGV[0]

if ARGV[0].match(/^v[0-9.]+/)
  gem_config_dir = "#{Dir.home}/.gem"
  credentials_file = "#{gem_config_dir}/credentials"

  FileUtils.mkdir_p gem_config_dir
  File.open(credentials_file) {|f| f.puts ENV['RUBYGEMS_AUTH_TOKEN'] }
  File.chmod 0600, credentials_file

  puts `gem push text_transform-*.gem`
end
