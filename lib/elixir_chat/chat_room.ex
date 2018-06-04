defmodule ElixirChat.ChatRoom do

  def index do

  end

  def create(params) do
    with chat_room_changeset <- Schema.create_changeset(params),
      {:ok, chat_room} <- Query.insert(chat_room_changeset)
    do
      {:ok, chat_room}
    else
      {:error, %Ecto.Changeset{} = error} -> {:error, Query.changeset_errors(error)}
      error -> error
    end
  end

end
