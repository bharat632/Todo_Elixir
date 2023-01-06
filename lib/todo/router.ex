defmodule Todo.Router do
  use Plug.Router
  import Todo.TodoSchema

	plug :match
	plug :dispatch
	plug Plug.Static, at: "/index", from: :server

	get "/" do
		body=EEx.eval_file("lib/html/index.html.leex")
    send_resp(conn, 200, body)
	end

	get "/index" do
		conn = Plug.Conn.fetch_query_params(conn)
 		task = to_string(Map.fetch!(conn.params, "new-task-input"))
    if({:ok , _} = Todo.TodoSchema.add_task(task)) do
			body=EEx.eval_file("lib/html/index.html.leex" , [status: "data_saved"])
			send_resp(conn, 200, body)
		else
			body=EEx.eval_file("lib/html/index.html.leex" ,[status: "data_not_saved"])
			send_resp(conn, 200, body)
		end

	end

	get "/delete" do
		conn = Plug.Conn.fetch_query_params(conn)
 		id = (Map.fetch!(conn.params, "task_id"))
    Todo.TodoSchema.delete_task(id)
		body=EEx.eval_file("lib/html/index.html.leex")
    send_resp(conn, 200, body)
	end

	get "/status" do
		conn = Plug.Conn.fetch_query_params(conn)
 		id = (Map.fetch!(conn.params, "task_id"))
		status = (Map.fetch!(conn.params, "task_status"))
    Todo.TodoSchema.task_status(id , status)
		body=EEx.eval_file("lib/html/index.html.leex")
    send_resp(conn, 200, body)
	end

	get "/update" do
		conn = Plug.Conn.fetch_query_params(conn)
		id = (Map.fetch!(conn.params, "task_id"))
 		task_date = to_string(Map.fetch!(conn.params, "task_date"))
		task = to_string(Map.fetch!(conn.params, "task"))
		IO.puts("#{id} and #{task} and #{task_date}")
		body=EEx.eval_file("lib/html/update.html.leex", [task_id: id , task_date: task_date , task: task])
    send_resp(conn, 200, body)
	end

	get "/save" do
		conn = Plug.Conn.fetch_query_params(conn)
		id = (Map.fetch!(conn.params, "task_id"))
		task = to_string(Map.fetch!(conn.params, "task"))
		IO.puts("#{id} and #{task}")
    Todo.TodoSchema.update_task(id , task)
		body=EEx.eval_file("lib/html/index.html.leex")
    send_resp(conn, 200, body)
	end

	match _, do: send_resp(conn, 404, "404 error not found!")

end
