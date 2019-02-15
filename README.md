# Hello

Hi I have made a approach that will be able to take data from a Public API and Comma Seperated Value (CSV) to 
put on a database. The was done with Elixir the programming language.

To achieve this task a framework is needed to read the language to locate the database server for the data to be 
copied to the server the framwork used in this article is Phoenix


To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
# hello-fleek

defmodule Hello.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :email, :string
      add :" bio", :string
      add :number_of_pets, :integer

      timestamps()
    end
      def changeset(%User{} = user, attrrs) do

        user 
        |> cast(attrs [:name, :email, :number_of_pets])
        |> validate_required([:name, :email, :number_of_pets])
  end
end

this an example of data will export the CSV file that is imported to the database 
postgresSQL used for this excersie 
