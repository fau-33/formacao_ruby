class Bar
  def foo
    # Pode ser definida como local ou _local
    _local = "local é acessada somente dentro deste método"
    puts _local
  end

  def example
    local
  end
end

bar = Bar.new
bar.foo