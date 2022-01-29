fizzBuzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> "#{c}"
end

IO.puts fizzBuzz.(0, 0, 38)
IO.puts fizzBuzz.(0, 1, 3)
IO.puts fizzBuzz.(1, 0, 3)
IO.puts fizzBuzz.(1, 2, 383)

testFb = fn (n) -> fizzBuzz.(rem(n,3), rem(n,5), n) end

IO.puts testFb.(10)
IO.puts testFb.(11)
IO.puts testFb.(12)
IO.puts testFb.(13)
IO.puts testFb.(14)
IO.puts testFb.(15)
IO.puts testFb.(16)
