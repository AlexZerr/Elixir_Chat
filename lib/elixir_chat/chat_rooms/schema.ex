defmodule ElixirChat.ChatRooms.Schema do
  #use ElixirChat.Schema
  #alias Ecto.Changeset

  @required_create_fields []
  @required_update_fields []
  @optional_create_fields []
  @optional_update_fields []

  #schema "chat_rooms" do
  #  field :body, :string
  #  timestamps(type: :utc_datetime)
  #end

  #def create_changeset(params \\ %{}) do
  #  %__MODULE__{}
  #  |> Changeset.cast(params, @required_create_fields ++ @optional_create_fields)
  #  |> Changeset.validate_required(@required_create_fields)
  #end

  # def update_changeset(chat_room, params \\ %{}) do
    #  chat_room
    #  |> Changeset.cast(params, @required_update_fields ++ @optional_update_fields)
    #  |> Changeset.validate_required(@required_update_fields)
    #end

end
