defmodule Naive.TraderTest do
  use ExUnit.Case
  require IEx

  alias Naive.Trader

  describe "fetch tick size" do
    test "it can fetch tick size" do
      state =
        (
          symbol = "xrpbtx"
          buy_order = 1
          sell_order = 2
          profit_interval = 2
          tick_size = 1
        )

      Trader.init(state)
    end
  end
end
