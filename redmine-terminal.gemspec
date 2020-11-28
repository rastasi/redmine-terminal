Gem::Specification.new do |s|
  s.name           = 'redmine-terminal'
  s.version        = '0.4.0'
  s.licenses       = ['GPL v2']
  s.description    = 'Terminal based client for Redmine'
  s.summary        = 'Terminal based client for Redmine'
  s.authors        = ['Zsolt Tasnadi']
  s.email          = 'rastasi@gmail.com'
  s.require_paths  = ['lib']
  s.files          = %w[
                      lib/redmine-terminal.rb
                      lib/redmine-terminal/config.rb
                      lib/redmine-terminal/command.rb
                      lib/redmine-terminal/command/issues.rb
                      lib/redmine-terminal/command/projects.rb
                      lib/redmine-terminal/command/users.rb
                     ]
  s.executables    = ['rmine']
  s.requirements   = %w[
                        json
                        rest-client
                        terminal-table
                        yaml
                    ]
end
