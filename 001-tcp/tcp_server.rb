require 'socket'

socket = TCPServer.new(4200)
puts "Listening to the port 4200"

connection = socket.accept

line = connection.gets
puts "Client requested: #{line}"

connection.puts 'Server is going to respond: Hey Client!'

connection.close
socket.close