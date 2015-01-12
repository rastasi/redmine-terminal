module RedmineTerminal
  home_dir =  File.expand_path('~')
  config_dir = home_dir + '/.redmine-terminal'
  config_file = config_dir + '/config.yml'

  Dir.mkdir(config_dir) unless File.exists?(config_dir)

  unless File.exists?(config_file)
    new_config = File.new(config_file, 'w')
    new_config.puts 'host: demo.redmine.org'
    new_config.puts 'user: john'
    new_config.puts 'password: secret'
    new_config.close
  end

  config = YAML.load_file(config_file)

  ::RMINE = RestClient::Resource.new config['host'], config['user'], config['password']
end