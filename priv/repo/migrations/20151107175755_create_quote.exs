defmodule Inspire.Repo.Migrations.CreateQuote do
  use Ecto.Migration

  def change do
    create table(:quotes) do
      add :content, :text
      add :author, :string

      timestamps
    end

  end
end
