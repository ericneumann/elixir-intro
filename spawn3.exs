defmodule Spawn3 do
  def greet do
    receive do
      {sender, msg} ->
        send sender, { :ok, "Hello #{msg}" }
    end
  end
end

pid = spawn(Spawn3, :greet, [])

send pid, {self, "World!"}
receive do
  {:ok, message} ->
    IO.puts message
end

send pid, {self, "Kermit!"}
receive do
  {:ok, message} ->
    IO.puts message
  after 5000 ->
    IO.puts "The greeter has died"
end
