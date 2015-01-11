Gem::Specification.new do |s|
  s.name           = 'redmine-terminal'
  s.version        = '0.1.0'
  s.licenses       = ['GPL v2']
  s.description    = "Terminal based client for Redmine"
  s.summary        = "Terminal based client for Redmine"
  s.authors        = ["Zsolt Tasnadi"]
  s.email          = 'tasi@syrakuza.hu'
  s.require_paths  = ['lib']
  s.files          = [
                      'lib/redmine-terminal.rb',
                      'lib/redmine-terminal/config.rb',
                      'lib/redmine-terminal/issues.rb'
                     ]
  s.executables    = ['rmine']
  s.requirements   = ["json", "rest-client", "terminal-table", "yaml"]
end
