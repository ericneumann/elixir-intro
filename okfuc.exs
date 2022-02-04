defmodule OK do
  def ok!({:ok, data}) do
    data
  end
  def ok!({_, _}) do
    raise "This is NOT OK!!!!"
  end
end
