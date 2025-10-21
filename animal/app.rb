require_relative "./animal.rb"
require_relative "./cachorro.rb"

animal = Animal.new
animal.pular

puts "--CACHORRO--"
cachorro = Cachorro.new
cachorro.latir
cachorro.pular