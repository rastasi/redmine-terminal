module RedmineTerminal
    require 'json'
    require 'rest-client'
    require 'terminal-table'
    require 'yaml'

    require_relative 'redmine-terminal/config'
    require_relative 'redmine-terminal/command'
    require_relative 'redmine-terminal/command/issues'
end
