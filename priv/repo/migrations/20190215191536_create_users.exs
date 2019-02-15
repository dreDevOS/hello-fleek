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
