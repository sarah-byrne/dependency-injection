class Greeter
  def initialize(kernel = Kernel.new)
    @kernel = kernel
  end

  def greet
    puts "What is your name?"
    name = @kernel.gets.chomp
    puts "Hello, #{name}"
  end
end
