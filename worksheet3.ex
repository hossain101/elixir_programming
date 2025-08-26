defmodule EnginMonitor do


  def latest(data) do
    [head|_] =data
    IO.puts(inspect(data))
    IO.puts("Head : #{head}")
  end

  def new_reading(reading,data) do
    new_list = [reading|data]
    IO.puts("New List : #{inspect(new_list)}")
    IO.puts("Head of List : #{List.first(new_list)}")


  end

  def max_reading([]) do
    0
  end

  def max_reading([head | tail]) do
    max_val = max_reading(tail)
    if head > max_val, do: head, else: max_val
  end


    def rising([]), do: 0

  def rising(data) do
    [head_1|tail] = data
    if tail != [] do
      [head_2|_] = tail
      if head_1 > head_2 , do: rising(tail)+1, else: rising(tail)

    else
      rising(tail)
    end
  end

  def danger?([]), do: 0

  def danger?(data) do
    [head|tail] = data



    if tail != [] do
    [head_1|_] = tail
    if head - head_1>=50, do:  danger?(tail)+1 , else: danger?(tail)
    else
    0
    end

    end


  def fire?(string_data) do


    String.contains?(String.upcase(string_data),"FIRE")


  end

  def decode(string_data) do
    string_data |>
    String.split() |>
    Enum.map(&String.first(&1)) |>
    Enum.join() |>
    String.upcase()


  end


end

_data = [901,851,841,800,756,101,640,390,201]
string_data = "Fire Extinguisher Active Right"
IO.puts(EnginMonitor.decode(string_data))
