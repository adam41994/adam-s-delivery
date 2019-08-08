defmodule AdamsDelivery.PostalCode.StoreTest do
    use ExUnit.Case
    alias AdamsDelivery.PostalCode.Store
    doctest AdamsDelivery

    test "get_geolocation" do
        {latitude, longitude} = Store.get_geolocation("01545")

        assert is_float(latitude)
        assert is_float(longitude)
    end
end