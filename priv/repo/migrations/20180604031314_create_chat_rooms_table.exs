defmodule ElixirChat.Repo.Migrations.CreateChatRoomsTable do
  use Ecto.Migration

  def change do
    create table(:chat_rooms, primary_key: false) do
      add(:id, :uuid, primary_key: true)
      add(:name, :string, null: false)
      
      timestamps
    end
  end
end
