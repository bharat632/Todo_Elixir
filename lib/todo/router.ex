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
		IO.puts("#{task}")
    Todo.TodoSchema.add_task(task)
		body=EEx.eval_file("lib/html/index.html.leex")
    send_resp(conn, 200, body)
	end

	get "/delete" do
		conn = Plug.Conn.fetch_query_params(conn)
 		id = (Map.fetch!(conn.params, "task_id"))
		IO.puts("#{id}")
    Todo.TodoSchema.delete_task(id)
		body=EEx.eval_file("lib/html/index.html.leex")
    send_resp(conn, 200, body)
	end

	get "/update" do
		conn = Plug.Conn.fetch_query_params(conn)
		id = (Map.fetch!(conn.params, "task_id"))
 		task = to_string(Map.fetch!(conn.params, "new_task"))
		IO.puts("#{id} and #{task}")
    Todo.TodoSchema.update_task(id , task)
		body=EEx.eval_file("lib/html/index.html.leex")
    send_resp(conn, 200, body)
	end

	match _, do: send_resp(conn, 404, "404 error not found!")

end
