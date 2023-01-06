defmodule Todo.TodoSchema do
  use Ecto.Schema
  import Ecto.Query

  schema "todo" do
    field :task , :string
    field :created_at , :string
    field :status , :string
  end

  def changeset(task , params \\ %{}) do
    IO.inspect(params)
    task
    |> Ecto.Changeset.cast(params , [:task , :created_at , :status])
    |> Ecto.Changeset.validate_required([:task , :created_at , :status])
  end

  def add_task(task) do
    date = to_string(Date.utc_today())
    status = "Incomplete"
    task = %Todo.TodoSchema{task: task , created_at: date , status: status}
    task
    |> changeset()
    |> Todo.Repo.insert()
  end

  def task_status(id , status) do
    # IO.puts("#{id} #{status}")
    # new_status = nil
    # if(status == "Incomplete") do
    #   new_status = "Completed"
    # end

    # if(status == "Completed") do
    #   new_status = "Incomplete"
    # end
    status = "Completed"

    old_task = Todo.TodoSchema |> Todo.Repo.get(id)

    old_task
    |> changeset(%{status: status})
    |> Todo.Repo.update()
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
    query = from task in Todo.TodoSchema, order_by: [desc: task.id]
    Todo.Repo.all(query)
  end

end
