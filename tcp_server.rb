require 'socket'

socket = TCPServer.new(4000)
puts "Listening to the port 4000"

loop do
  client = socket.accept
  client.puts 'Hello from the Server!'
  client.puts "Time is #{Time.now}"
  client.close
end