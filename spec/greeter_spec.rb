require 'exercise_2'

describe Greeter do
  it "greets the person" do
    kernel_double = double :kernel, gets: "Sarah"
    greeter = Greeter.new(kernel_double)
    expect { greeter.greet }.to output("What is your name?\nHello, Sarah\n").to_stdout
  end
end
