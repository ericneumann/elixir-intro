defmodule MultiProcess do

  def message_returner do
    receive do
      {sender, msg} ->
        send sender, {:ok, msg}
        message_returner()
    end
  end

  def message_spawner(token1, token2) do
    pid1 = spawn(MultiProcess, :message_returner, [])
    pid2 = spawn(MultiProcess, :message_returner, [])

    send pid1, {self(), token1}


    send pid2, {self(), token2}

    receive do
      {:ok, message} ->
        IO.puts message
      after 500 ->
        IO.puts "gettin nutthin' here"
    end

  end
end
