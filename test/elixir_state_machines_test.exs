defmodule ElixirStateMachinesTest do
  use ExUnit.Case
  doctest ElixirStateMachines

  test "greets the world" do
    assert ElixirStateMachines.demo() == {:ok, "nothing to see here"}
  end
end
