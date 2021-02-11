require 'socket'

server = TCPSocket.new('localhost', 4200)

content_request = 'Hey Server!'
puts "Client is going to request: #{content_request}"
server.puts "#{content_request}"

response = server.gets #lê alguma coisa do server
puts "Server responded: #{response}"

server.close
