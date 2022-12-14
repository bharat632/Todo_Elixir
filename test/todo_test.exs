defmodule TodoTest do
  use ExUnit.Case
  # doctest Todo

  setup do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(Todo.Repo)
  end

  test "Todo.Application Supervisor" do
    pid = Process.whereis Todo.Supervisor
    status = Process.alive? pid
    assert status == true
  end

  test "Plug Connection Test" do
    {:ok, pid} = Plug.Adapters.Cowboy.http Todo.Router, []
  end

  test "add_task" do
    {:ok , todo_struct} = Todo.TodoSchema.add_task("hello world")
    assert  todo_struct.task == "hello world"
  end

  test "delete_task" do
    {:ok, deleted_struct} = Todo.TodoSchema.delete_task(98)
    assert deleted_struct.id == 98
  end

  test "update_task" do
    {:ok , updated_task} = Todo.TodoSchema.update_task(97 , "update task with task-id 97")
    assert updated_task.id == 97
    assert updated_task.task == "update task with task-id 97"
  end

end
