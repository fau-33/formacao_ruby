class Foo
    attr_accessor :name
    def call_protected(instance)
        instance.bar
    end

    protected
    def bar
        puts name
    end
end

instance_1 = Foo.new
instance_1.name = "Pedro"
instance_1.call_protected(instance_1)

instance_2 = Foo.new
instance_2.name = "Maria"
instance_2.call_protected(instance_2)