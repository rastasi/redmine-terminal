RedmineTerminal::Command.new :users do

  url = '/users.json'

  users =  JSON.parse(RMINE[url].get)
  lines = []

  users['users'].each do |user|
    line = []
    line.push user['id']
    line.push user['login']
    line.push user['firstname']
    line.push user['lastname']
    line.push user['last_login_on']
    lines.push line
  end

  puts Terminal::Table.new :rows => lines
end