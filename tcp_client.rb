require 'socket'

socket = TCPSocket.new('1ocalhost', 4000)

while line = socket.gets
  puts line
end

socket.close