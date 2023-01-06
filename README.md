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

![first_view](https://user-images.githubusercontent.com/60865755/211035136-ac36b5f7-265c-4732-9fec-06237933fd29.PNG)

Alert Popup before delete any task
![delete_alert](https://user-images.githubusercontent.com/60865755/211035144-7a52ce70-ce6c-4d0c-a017-30be7cd577bd.PNG)

Updating a task needs ID of task and new task value 
![update_page](https://user-images.githubusercontent.com/60865755/211035151-3d9489bb-98e0-46bf-8144-46d1b7d16ef3.PNG)

Test 
![test_pass](https://user-images.githubusercontent.com/60865755/207637115-d8d3f4fb-6dd1-48aa-b7a5-58411c13494f.PNG)

Database

![database](https://user-images.githubusercontent.com/60865755/207637132-70a4d31c-df62-4c1b-a385-4188f86609dc.PNG)

