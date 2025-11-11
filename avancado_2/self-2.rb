class Pen
    attr_accessor :color
    def pen_color
        puts "The color is " + self.color
    end
end

pen = Pen.new
pen.color = "blue"
pen.pen_color

pen2 = Pen.new
pen2.color = "red"
pen2.pen_color