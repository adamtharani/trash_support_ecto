defmodule TrashSupport.DateTimeParameterized do
  use Ecto.ParameterizedType

  def type(_), do: :"timestamptz(6)"
  def init(opts), do: {:ok, opts}
  def cast(value, _), do: Ecto.Type.cast(:utc_datetime_usec, value)
  def dump(value, _, _), do: Ecto.Type.dump(:utc_datetime_usec, value)
  def load(value, _), do: Ecto.Type.load(:utc_datetime_usec, value)
end
