Gem::Specification.new do |s|
  s.name           = 'redmine-terminal'
  s.version        = '0.2.0'
  s.licenses       = ['GPL v2']
  s.description    = 'Terminal based client for Redmine'
  s.summary        = 'Terminal based client for Redmine'
  s.authors        = ['Zsolt Tasnadi']
  s.email          = 'tasi@syrakuza.hu'
  s.require_paths  = ['lib']
  s.files          = %w[
                      lib/redmine-terminal
                      lib/redmine-terminal/config
                      lib/redmine-terminal/command
                      lib/redmine-terminal/command/issues
                      lib/redmine-terminal/command/projects
                     ]
  s.executables    = ['rmine']
  s.requirements   = %w[
                        'json'
                        'rest-client'
                        'terminal-table'
                        'yaml'
                    ]
end
