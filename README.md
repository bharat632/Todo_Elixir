# Todo

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `todo` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:todo, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/todo>.

'''
commands to Execute the Todo Web App
'''

#to install all dependencies  - mix do deps.get 

#to create database you mention on config/config.exs   - mix ecto.create 

#to create repo   - mix ecto.migrate



This is a first view of Todo Web App.

![view](https://user-images.githubusercontent.com/60865755/206926158-66b1e741-d628-45d8-aa52-69d72ce3249e.PNG)

After Inserting of Data to Database.

![insert](https://user-images.githubusercontent.com/60865755/206926161-7bf35370-294e-4203-809d-925b416f8d5f.PNG)

Deleting of task with its unique ID 

![delete](https://user-images.githubusercontent.com/60865755/206926168-b8b40076-fcab-498b-a8bc-cd1d64d3f476.PNG)

Updating a task needs ID of task and new task value 

![update](https://user-images.githubusercontent.com/60865755/206926172-31f60d4e-53ac-42e7-81db-89d53a44ee7f.PNG)

Get all the entries from database
![get_all](https://user-images.githubusercontent.com/60865755/206926177-ff2e19ac-a8a8-43e4-8d4a-c2196c4947ec.PNG)

