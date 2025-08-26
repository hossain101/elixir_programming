# Practicing anonymous function
# Worksheet 4 Question2

defmodule Secrets do
  def secret_add(x) do
    fn y -> x+y end
  end

  def secret_subtractor(x) do
    # here since we are putting 2 as x,as in (subtractor = Secrets.secret_subtractor(2))
    # and subracting 2 from any number we input as y(subtractor.(3))
    fn y -> y-x end
  end

  def secret_multiply(x) do
    fn y -> x*y end
  end

  def secrete_divide(x) do
    fn y -> div(y,x)
  end

  end

  def secret_and(x) do
    fn y -> Bitwise.band(y,x) end
  end

  def secret_xor(x) do
    fn y -> Bitwise.bxor(y,x) end
  end

  def secret_combine(func1,func2) do
    fn input -> func2.(func1.(input)) end
  end


end

adder = Secrets.secret_add(2)

subtractor = Secrets.secret_subtractor(2)

# This will multiply any number we put as y by 7
multiplier = Secrets.secret_multiply(7)

divider = Secrets.secrete_divide(3)

ander = Secrets.secret_and(1)
xorer  = Secrets.secret_xor(1)

combined = Secrets.secret_combine(multiplier,divider)


IO.puts("This is adder : #{adder.(3)}")
IO.puts("This is subtractor : #{subtractor.(3)}")
IO.puts("This is multiplier : #{multiplier.(4)}")
IO.puts("This is divider : #{divider.(32)}")
IO.puts("This is ander : #{ander.(2)}")
IO.puts("This is xorer : #{xorer.(3)}")
IO.puts("This is combined : #{combined.(6)}")
