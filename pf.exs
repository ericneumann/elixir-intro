defmodule Polite do

  def prefix(pref) do
    fn name -> "#{pref} #{name}" end
  end
end
