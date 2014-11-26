defmodule KV do
  def repo do
    use Mix.Config
    [default: [hosts: hosts]] = import_config("../config/config.exs")    
    %Riak{hosts: hosts}
  end
    
  defprotocol Op do
    def find(_, id)
    # def get()
    # def insert()
    # def update()
    # def delete()
  end

  def find(id) do
    Op.find(repo, id)
  end
end
