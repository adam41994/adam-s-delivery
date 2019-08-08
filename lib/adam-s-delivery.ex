defmodule AdamsDelivery do
  use Application

  def start(_type, _args) do
    AdamsDelivery.Supervisor.start_link
  end
end
