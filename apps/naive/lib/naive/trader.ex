defmodule Naive.Trader do
  use GenServer

  def start_link(args) do
    GenServer.start_link(__MODULE__, args, name: :trader)
  end
end
