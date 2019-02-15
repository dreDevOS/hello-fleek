# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Hello.Repo.insert!(%Hello.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


defmodule Seeds.DepartmentsAndCommunes do
  use Mix.Project

    @doc "Imports departments and communes from the given CSV to the database"
    def import_from_csv(csv_path) do
      Agent.start_link(fn -> %{departments: %HashDict{}, communes: []} end, name: __MODULE__)
  
      File.stream!(Path.expand(csv_path))
      |> CSV.decode(separator: ?;, headers: true)
      |> Stream.each(fn row ->
        _process_csv_row(row, agent)
      end)
      |> Stream.run
    end
  
    defp _process_csv_row(row, agent) do
      # TODO
    end
    defp aliases do
      ["ecto.setup": ["ecto.create", "ecto.migrate", "run priv/repo/seeds.exs"],
       "ecto.reset": ["ecto.drop", "ecto.setup"]]
    end
  
  end