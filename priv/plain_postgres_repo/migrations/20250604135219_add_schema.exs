defmodule TrashSupport.PlainPostgresRepo.Migrations.AddSchema do
  use Ecto.Migration

  def up do
    create_if_not_exists table(:ContactTaskJoinEcto, primary_key: false) do
      add(:customer_id, :integer, primary_key: true, null: false)
      add(:_rowid, :integer, primary_key: true, null: false)
      add(:contactID, :integer, null: false)
      add(:taskID, :integer, null: false)
      add(:deletionUserID, :integer)
      add(:deletionDate, :timestamptz)
      add(:deletionIdentifier, :string)
    end

    execute("""
    CREATE TABLE IF NOT EXISTS "public"."ContactTaskJoin" (
    customer_id bigint NOT NULL,
    _rowid bigint NOT NULL,
    "contactID" bigint NOT NULL,
    "taskID" bigint NOT NULL,
    "deletionUserID" bigint,
    "deletionDate" timestamp with time zone,
    "deletionIdentifier" character varying,
    PRIMARY KEY (customer_id, _rowid)
    )
    """)
  end

  def down do
    execute("""
    DROP TABLE "public"."ContactTaskJoin"
    """)

    execute("""

    DROP TABLE "public"."ContactTaskJoinEcto"
    """)
  end
end
