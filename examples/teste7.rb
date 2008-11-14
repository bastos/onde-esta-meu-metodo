# Exemplo de bot utilizando o isaac
# http://github.com/ichverstehe/isaac

echo_bot do
  c.server = "irc.freenode.net"
  c.port = 6667
end
 
on :connect do
  join "#ruby"
end
 
on :channel, /.*/ do
  msg channel, message
end
