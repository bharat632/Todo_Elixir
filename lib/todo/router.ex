defmodule Todo.Router do
  use Plug.Router
  import Todo.TodoSchema

	plug :match
	plug :dispatch
	plug Plug.Static, at: "/index", from: :server


	get "/" do
		conn = put_resp_content_type(conn , "text/html")
		send_file(conn , 200 , "lib/html/index.html")
	end

	get "/index" do
		conn = Plug.Conn.fetch_query_params(conn)
 		task = to_string(Map.fetch!(conn.params, "new-task-input"))
		IO.puts("#{task}")
    Todo.TodoSchema.add_task(task)
		conn
		|> Plug.Conn.put_resp_content_type("text/html")
		|> Plug.Conn.send_file(200 , "lib/html/index.html")
	end

	'''
	get method for delete and update not going to work because
	i m not able to display the tasks on browser
	once i m able to display the tasks on browser i will be able to fetch
	their unique id and task for delete and update
	'''
	# get "/delete" do
	# 	conn = Plug.Conn.fetch_query_params(conn)
 	# 	id = (Map.fetch!(conn.params, "task_id"))
	# 	IO.puts("#{id}")
  #   Todo.TodoSchema.delete_task(id)
	# 	conn
	# 	|> Plug.Conn.put_resp_content_type("text/html")
	# 	|> Plug.Conn.send_file(200 , "lib/html/index.html")
	# end

	# get "/update" do
	# 	conn = Plug.Conn.fetch_query_params(conn)
	# 	id = (Map.fetch!(conn.params, "task_id"))
 	# 	task = to_string(Map.fetch!(conn.params, "task"))
	# 	IO.puts("#{id} and #{task}")
  #   Todo.TodoSchema.update_task(id , task)
	# 	conn
	# 	|> Plug.Conn.put_resp_content_type("text/html")
	# 	|> Plug.Conn.send_file(200 , "lib/html/index.html")
	# end

	match _, do: send_resp(conn, 404, "404 error not found!")

end
