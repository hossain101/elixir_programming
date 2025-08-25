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

    def tryRecursion(msg,n) when n>0 do
      IO.puts(msg)
      tryRecursion(msg,n-1)

    end
    def tryRecursion(msg,0) do
      IO.puts("Recursion ends here")
    end

end

Example.tryRecursion("Shoaib Is The Best!!!",100)
