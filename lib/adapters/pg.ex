defmodule Pg do
  defstruct hosts: [{"127.0.0.1", 8087}]

  defimpl KV.Op, for: Pg do
    def find(_, id) do
      IO.puts("hello Pg!")
    end
  end
end
