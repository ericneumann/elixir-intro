defmodule Chop do
  def guess(num, low..high) when num < low do
    IO.puts "#{num} is out of range #{low} to #{high}"
  end
  def guess(num, low..high) when num == low do
    IO.puts "#{num} is #{low}!"
  end
  def guess(num, low..high) when num == high do
    IO.puts "#{num} is #{high}!"
  end
  def guess(num, low..high) when num < high do
    #IO.puts "num less than high"
    #IO.puts "num is #{num} and range #{low} to #{high}"
    IO.puts "is it #{high}"
    guess(num, low..(div((high+low),2)))
  end
  def guess(num, low..high) when num > high do
    #IO.puts "num more than high"
    #IO.puts "num is #{num} and range #{low} to #{high}"
    IO.puts "is it #{high}"
    guess(num, (high)..(high*2))
  end

end
