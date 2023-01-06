defmodule Todo.Repo.Migrations.CreateTodo do
  use Ecto.Migration

  def change do
    create table(:todo) do
      add :task , :string
      add :created_at , :string
      add :status , :string
    end
  end
end
