defmodule Parallel do
  def pmap(collection, fun) do
    me = self()
    collection
    |> Enum.map(fn (elem) ->
      spawn_link fn -> (send me, {self(), fn ->
        Enum.random(1..1000) |> :timer.sleep
        fun.(elem) end }) end
    end)
    :timer.sleep 10000
    |> Enum.map(fn (pid) ->
      receive do { _pid, result } -> result end
    end)
  end
end
