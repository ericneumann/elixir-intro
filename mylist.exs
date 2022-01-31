defmodule MyList do
  def len([]), do: 0
  def len([_head|tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([head | tail]), do: [ head * head | square(tail) ]

  def add_one([]), do: []
  def add_one([head | tail]), do: [ head + 1 | add_one(tail) ]

  def map([], _func),             do: []
  def map([ head | tail ], func), do: [ func.(head) | map(tail, func) ]

  def reduce([], value, _func), do: value
  def reduce([head | tail], value, func), do: reduce(tail, func.(head, value), func)

  def mapsum(list, value \\ 0, func)
  def mapsum([], value, _func), do: value
  def mapsum([head | tail], value, func) do
    mapsum(tail, (func.(head) + value), func)
  end

  def max(list, index \\ 0)
  def max([], index), do: index
  def max([head|tail], index) when head > index do
    index = head
    MyList.max(tail, index)
  end
  def max([head|tail], index) when head <= index do
    index
    MyList.max(tail, index)
  end

  def caesar([], _shift), do: []
  def caesar([head|tail], shift) when (head + shift) <= ?z,
    do: [ head + shift | caesar(tail, shift) ]
  def caesar([head|tail], shift),
    do: [ head + shift - 26 | caesar(tail, shift) ]

end
