defmodule Todo.TodoSchema do
  use Ecto.Schema

  schema "todo" do
    field :task , :string
    field :created_at , :string
  end

  def changeset(task , params \\ %{}) do
    task
    |> Ecto.Changeset.cast(params , [:task , :created_at])
    |> Ecto.Changeset.validate_required([:task , :created_at])
  end

  def add_task(task) do
    date = to_string(Date.utc_today())
    task = %Todo.TodoSchema{task: task , created_at: date}
    task
    |> changeset()
    |> Todo.Repo.insert()
  end

  # before calling update_task function we have to convert the input data into string
  def update_task( id ,task) do
    old_task = Todo.TodoSchema |> Todo.Repo.get(id)
    IO.inspect(task)
    old_task
    |> changeset(%{task: task})
    |> Todo.Repo.update()
  end

  # delete will take id to delete a task
  def delete_task(id) do
    Todo.TodoSchema
    |> Todo.Repo.get(id)
    |> Todo.Repo.delete()
  end

  def get_all_tasks() do
    tasks = Todo.TodoSchema |> Todo.Repo.all
  end

end
