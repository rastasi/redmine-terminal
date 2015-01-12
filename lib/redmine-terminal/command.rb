module RedmineTerminal
  class Command

    @@commands = {}

    def initialize(name, &block)
      @@commands[name] = block
    end

    def self.run!(name)
      @@commands[name].call
    end

    def self.list
      @@commands.keys
    end

  end
end