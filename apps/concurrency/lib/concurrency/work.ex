defmodule Concurrency.Work do
  def start(args) do
    spawn(__MODULE__, :init, [args])
  end

end
