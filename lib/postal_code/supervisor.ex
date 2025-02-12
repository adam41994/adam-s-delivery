defmodule AdamsDelivery.PostalCode.Supervisor do
    use Supervisor
    alias AdamsDelivery.PostalCode.Store

    def start_link do
        Supervisor.start_link(__MODULE__, [])
    end

    def init(_) do
        children = [
            worker(Store, [])
        ]

        supervise(children, strategy: :one_for_one)
    end
end