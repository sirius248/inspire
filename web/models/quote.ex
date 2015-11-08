defmodule Inspire.Quote do
  use Inspire.Web, :model

  schema "quotes" do
    field :content, :string
    field :author, :string

    timestamps
  end

  @required_fields ~w(content author)
  @optional_fields ~w()

  def changeset(model, params \\ :empty) do
    model
      |> cast(params, @required_fields, @optional_fields)
  end
end
