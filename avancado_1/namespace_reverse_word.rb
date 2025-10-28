module ReverseWord
    def self.puts(text)
        Kernel::puts text.reverse.to_s
    end
end

ReverseWord::puts "Hello, World!"  # Output: !dlroW ,olleH