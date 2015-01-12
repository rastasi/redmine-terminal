module RedmineTerminal
    require 'json'
    require 'rest-client'
    require 'terminal-table'
    require 'yaml'

    %w[
        redmine-terminal/config
        redmine-terminal/command
        redmine-terminal/command/issues
        redmine-terminal/command/projects
        redmine-terminal/command/users
    ].each {|file| require_relative(file)}
end
