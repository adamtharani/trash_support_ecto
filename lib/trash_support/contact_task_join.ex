defmodule TrashSupport.ContactTaskJoin do
  use Ecto.Schema

  @primary_key false
  schema "ContactTaskJoin" do
    field(:customer_id, :integer, primary_key: true, source: :customer_id)
    field(:id, :integer, primary_key: true, source: :_rowid)
    field(:contact_id, :integer, source: :contactID)
    field(:deletion_date, :utc_datetime_usec, source: :deletionDate)
    field(:deletion_identifier, :string, source: :deletionIdentifier)
    field(:deletion_user_id, :integer, source: :deletionUserID)
    field(:task_id, :integer, source: :taskID)
  end
end
