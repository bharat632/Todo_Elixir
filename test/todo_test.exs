defmodule TodoTest do
  use ExUnit.Case
  # doctest Todo

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Todo.Repo)
  end
end
