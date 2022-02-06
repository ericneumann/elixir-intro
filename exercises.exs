defmodule Ex do

  defmodule Times do

    def double(num), do: num * 2

    def triple(num), do: num * 3

    def quadruple(num) do
      num
      |> double
      |> double
    end
  end

  defmodule BasicMaths do

    def sum(0), do: 0
    def sum(num) when num >= 1 do
      num + sum(num-1)
    end

    def gcd(x, 0), do: x
    def gcd(x, y) do
      gcd(y, rem(x,y))
    end
  end
end
