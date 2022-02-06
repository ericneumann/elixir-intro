defmodule Exercises do

  defmodule Times do

    def double(num), do: num * 2

    def triple(num), do: num * 3

    def quadruple(num) do
      num
      |> double
      |> double
    end
  end
end
