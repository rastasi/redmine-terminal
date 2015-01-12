RedmineTerminal::Command.new :projects do

  url = '/projects.json'

  projects =  JSON.parse(RMINE[url].get)
  lines = []

  projects['projects'].each do |project|
    line = []
    line.push project['identifier']
    line.push project['name']
    lines.push line
  end

  puts Terminal::Table.new :rows => lines
end