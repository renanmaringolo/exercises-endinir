require 'socket'

server = TCPSocket.new('localhost', 4200)
puts 'Client is going to request: Hey Server!'

server.puts "Hey Server"

response = server.gets #lê alguma coisa do server
puts response

server.close
