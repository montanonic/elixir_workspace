defmodule Macros do
  # @after_compile __MODULE__

  # def __after_compile__(env, _bytecode) do
  #   module_ast =
  #     File.read!(env.file)
  #     |> Code.string_to_quoted!()

  #   Macro.postwalk(module_ast, fn
  #     {:def, _, args} -> IO.inspect(args)
  #     x -> x
  #   end)

  #   :ok
  # end

  def named do
    quote do
      def fun(x, y), do: x * y
    end
  end

  def anon_fn do
    quote do
      fn x, y -> x * y end
    end
  end

  def anon_short_fn do
    quote do
      &(&1 * &2)
    end
  end
end
