
if ARGV[0] == 'me'
  url = '/issues.json?assigned_to_id=me'
else
  url = '/issues.json'
end

issues =  JSON.parse(RMINE[url].get)

lines = []

issues['issues'].each do |issue|
  line = []
  line.push issue['project']['name']
  line.push issue['subject']
  line.push issue['assigned_to']['name'] if ARGV[0 ] != 'me'
  #puts line.join(' - ')
  lines.push line
end

puts Terminal::Table.new :rows => lines
