defmodule TrashSupportTest do
  use ExUnit.Case

  import Ecto.Query
  alias TrashSupport.{ContactTaskJoin, ContactTaskJoinEcto, DateTimeParameterized}

  test "table created by ecto" do
    query =
      from(c0 in ContactTaskJoinEcto,
        where: field(c0, :customer_id) == ^414,
        update: [
          set: [
            deletion_date:
              type(
                ^~U[2025-06-03 23:00:08.700366Z],
                ^{:parameterized,
                 {DateTimeParameterized,
                  precision: :microsecond, cast_dates_as: :start_of_day, timezone: :utc}}
              )
          ]
        ]
      )

    TrashSupport.Repo.update_all(query, [])

    query =
      from(c0 in ContactTaskJoinEcto,
        where: field(c0, :customer_id) == ^414,
        update: [
          set: [
            deletion_date:
              type(
                ^~U[2025-06-03 23:00:08.700366Z],
                ^{:parameterized,
                 {DateTimeParameterized,
                  precision: :microsecond, cast_dates_as: :start_of_day, timezone: :utc}}
              )
          ]
        ]
      )

    TrashSupport.Repo.update_all(query, [])
  end

  test "table created by raw sql" do
    query =
      from(c0 in ContactTaskJoin,
        where: field(c0, :customer_id) == ^414,
        update: [
          set: [
            deletion_date:
              type(
                ^~U[2025-06-03 23:00:08.700366Z],
                ^{:parameterized,
                 {DateTimeParameterized,
                  precision: :microsecond, cast_dates_as: :start_of_day, timezone: :utc}}
              )
          ]
        ]
      )

    TrashSupport.Repo.update_all(query, [])

    query =
      from(c0 in ContactTaskJoin,
        where: field(c0, :customer_id) == ^414,
        update: [
          set: [
            deletion_date:
              type(
                ^~U[2025-06-03 23:00:08.700366Z],
                ^{:parameterized,
                 {DateTimeParameterized,
                  precision: :microsecond, cast_dates_as: :start_of_day, timezone: :utc}}
              )
          ]
        ]
      )

    TrashSupport.Repo.update_all(query, [])
  end
end
