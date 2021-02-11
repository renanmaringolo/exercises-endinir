require 'socket'

socket = TCPServer.new(4200)
puts "Listening to the port 4200"

connection = socket.accept

line = connection.gets
puts "Client requested: #{line}"

content_response = 'Hey Client!'

response = connection.puts "#{content_response}"
puts "Server is going to respond: #{content_response}"

connection.close
socket.close