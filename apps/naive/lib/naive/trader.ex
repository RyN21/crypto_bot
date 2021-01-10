defmodule Naive.Trader do
  use GenServer

  defmodule State do
    @enforce_keys [:symbol, :profit_interval, :tick_size]
    defstruct [
      :symbol,
      :buy_order,
      :sell_order,
      :profit_interval,
      :tick_size
    ]
  end

  def start_link(%{} = args) do
    GenServer.start_link(__MODULE__, args, name: :trader)
  end

  def init(%{} = args) do
    tick_size = fetch_tick_size(args.symbol)

    {:ok, %State{
      symbol: args.symbol,
      profit_interval: args.profit_interval,
      tick_size: tick_size
      }}
  end
end
