defmodule FizzBuzz do

  def fb(0, 0, _), do: IO.puts("FizzBuzz")
  def fb(0, _, _), do: IO.puts("Fizz")
  def fb(_, 0, _), do: IO.puts("Buzz")
  def fb(_, _, third), do: IO.puts("#{third}")

  def remainder_fb(num) do
    fb(
      rem(num,3),
      rem(num,5),
      num
    )
  end
end
