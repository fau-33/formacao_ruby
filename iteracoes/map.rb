array = [1, 2, 3, 4, 5]

puts "\n Executando .map cada item por 2"
# .map não altera o array orginal

new_array = array.map do |item|
  item * 2
end

puts "\n Array original"
puts " #{array}"

puts "\n Array modificado"
puts " #{new_array}"

# ===============================================

puts "\n Executando .map! cada item por 2"
puts "\n Array original"
puts " #{array}"
# .map! força que o conteudo do array original seja modificado

array.map! do |item|
  item * 2
end

puts "\n Array Modificado"
puts " #{array}"
puts ""
