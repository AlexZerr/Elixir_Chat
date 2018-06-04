defmodule ElixirChat.ChatRooms.Query do
  #import Ecto.Query
  alias ElixirChat.{Repo, ChatRooms.Schema}

  def insert(changeset) do
    Repo.insert(changeset)
  end

  def update(changeset) when is_map(changeset) do
    Repo.update(changeset)
  end

  def destroy(chat_room) when is_map(chat_room) do
    Repo.delete(chat_room)
  end

  def find(id) do
    case Repo.get(Schema, id) do
      nil -> {:error, :invalid_chat_room_id}
      chat_room -> {:ok, chat_room}
    end
  end

  def preload(chat_room, preloads) do
    {:ok, Repo.preload(chat_room, preloads)}
  end

  def changeset_errors(errors) do
    Repo.changeset_errors(errors)
  end

end
