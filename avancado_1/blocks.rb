# Definição de um bloco de 1 linha
# 5.times { puts"Exec the block"}

# Definição de um bloco multi-linhas e com argumentos
# sum = 0
# numbers = [1, 2, 3, 4, 5]
# numbers.each { |number| sum += number }
# puts sum

# Definição de um bloco multi-linhas com do...end
# foo = {2 => 3, 4 => 5}

# foo.each do |key, value|
#   puts "Key = #{key}"
#   puts "Value = #{value}"
#   puts "key + value = #{key + value}"
#   puts "-----"
# end

# Bloco como argumento
# def foo
#     # Call the block
#     yield
#     yield
# end

# foo { puts "Hello from the block!" }

# Método com bloco opcional
# def foo
#     if block_given?
#         # Call the block
#         yield
#     else
#         puts "No block was given."
#     end
# end

# foo
# foo { puts "Com parêmetros tipo bloco!" }

# Outra forma de passar blocos como argumentos ou parâmetros
# def foo(name, &block)
#     @name = name
#     block.call
# end

# foo("Flávio") { puts "Hello, #{@name}!" }

def foo(numbers,&block)
    if block_given?
        numbers.each do |key, value|
            block.call(key, value)
        end
    end
end

numbers = {2 => 3, 4 => 5, 6 => 7}

foo(numbers) do |key, value|
    puts "#{key} * #{value} = #{key * value}"
    puts "#{key} + #{value} = #{key + value}"
    puts "-----"
end