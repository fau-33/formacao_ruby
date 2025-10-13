require 'os'

def my_os
  if OS.windows?
    "Windows"
  elsif OS.linux?
    "Linux"
  elsif OS.mac?
    "Mac"
  else
    "Unknown"
  end
end

puts "Meu Pc possui #{OS.cpu_count} cores, é #{OS.bits} bits e o sistema operacional eh #{my_os}"