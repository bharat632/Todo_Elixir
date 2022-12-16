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

![first_view](https://user-images.githubusercontent.com/60865755/208177911-1ca58380-3b94-40f1-a9f4-c895a2d6fc5b.PNG)

Updating a task needs ID of task and new task value 
![update](https://user-images.githubusercontent.com/60865755/208177925-801744b0-a0d5-4cda-828a-28b3f858b416.PNG)

Test 
![test_pass](https://user-images.githubusercontent.com/60865755/207637115-d8d3f4fb-6dd1-48aa-b7a5-58411c13494f.PNG)

Database

![database](https://user-images.githubusercontent.com/60865755/207637132-70a4d31c-df62-4c1b-a385-4188f86609dc.PNG)

