defmodule Concurrency.TaskTest do
  @spec say_hi_after(integer) :: Task.t()
  def say_hi_after(time) do
    Task.async(fn ->
      # Process.sleep(time)
      receive do
        :interrupt ->
          :continuing
      after
        time -> :finished_waiting
      end

      IO.puts("Hi!")
    end)
  end

  def walk do
    ast =
      quote do
        x
      end

    # Macro.prewalk(ast, fn x ->
    #   IO.puts(inspect(x) <> "\n")
    #   x
    # end)
    ast
  end
end
