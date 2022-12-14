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

if you want to run the test just uncomment import_config "#{config_env()}.exs" from config/config.exs

#run test  - mix test

#to install all dependencies  - mix do deps.get 

#to create database you mention on config/config.exs   - mix ecto.create 

#to create repo   - mix ecto.migrate


This is a first view of Todo Web App.

![first_view](https://user-images.githubusercontent.com/60865755/207637044-37fb46e4-2133-4860-acaf-5145472ff36b.PNG)

Deleting of task with its unique ID 

![delete](https://user-images.githubusercontent.com/60865755/206926168-b8b40076-fcab-498b-a8bc-cd1d64d3f476.PNG)

Updating a task needs ID of task and new task value 
![update1](https://user-images.githubusercontent.com/60865755/207637081-15673f21-5bfc-42f7-9b60-fd5e38e8050f.PNG)

Get all the entries from database
![get_all](https://user-images.githubusercontent.com/60865755/206926177-ff2e19ac-a8a8-43e4-8d4a-c2196c4947ec.PNG)

Test 
![test_pass](https://user-images.githubusercontent.com/60865755/207637115-d8d3f4fb-6dd1-48aa-b7a5-58411c13494f.PNG)

Database

![database](https://user-images.githubusercontent.com/60865755/207637132-70a4d31c-df62-4c1b-a385-4188f86609dc.PNG)

