# first_lambda = -> { puts "This is the first lambda." }
# first_lambda.call

# second_lambda = -> (names) { names.each { |name| puts name } }

# names = ["Flávio", "Maria", "João"]

# second_lambda.call(names)

# third_lambda = lambda do |numbers|
#     index = 0
#     puts "NUmero atual + Próximo número "
#     numbers.each do |number|
#         return if numbers[index] == numbers.last
#         puts "(#{numbers[index]}) + (#{numbers[index + 1]}) "
#         puts numbers[index] + numbers[index + 1]
#         index += 1
#     end
# end

# numbers = [1, 2, 3, 4, 5]

# third_lambda.call(numbers)

def foo(first_lambda, second_lambda)
    first_lambda.call
    second_lambda.call
end

first_lambda = -> { puts "This is the first lambda." }
second_lambda = -> { puts "This is the second lambda." }

foo(first_lambda, second_lambda)