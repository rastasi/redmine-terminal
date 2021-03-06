RedmineTerminal::Command.new :issues do

  if ARGV[1] == 'me'
    url = '/issues.json?assigned_to_id=me'
  else
    url = '/issues.json'
  end

  issues =  JSON.parse(RMINE[url].get)
  lines = []

  issues['issues'].each do |issue|
    line = []
    line.push "#"+issue['id'].to_s
    line.push issue['project']['name']
    line.push issue['subject']
    line.push issue['assigned_to']['name'] if ARGV[1] != 'me' and issue['assigned_to'] != nil
    lines.push line
  end

  puts Terminal::Table.new :rows => lines
end