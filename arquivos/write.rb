File.open('list.txt', 'w') do |file|
  file.puts('leite')
  file.puts('banana')
  file.puts('uva')
  file.puts('pão')
end

puts File.open('list.txt').size