defmodule Ascii do

  def isAscii(string), do: Enum.all?(string, fn ch -> ch in ?\s..?~ end)

end
