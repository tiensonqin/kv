defmodule Riak do
  defstruct hosts: [{"127.0.0.1", 8087}]

  defimpl KV.Op, for: Riak do
    def find(_, id) do
      IO.puts("hello Riak!")
    end
  end
end
