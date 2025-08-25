defmodule Example do
    def main do
    x=10
    IO.puts(x)
    IO.puts("Hello World")
    end

    def practice1 do
      name = "Shoaib"
      membership = :gold

      if membership == :gold do
        IO.puts("Welcome back, #{name}! You are a #{membership} member.")
      end
    end

end

Example.practice1()
