defmodule AdamsDelivery.PostalCode.DataParserTest do
    use ExUnit.Case
    alias AdamsDelivery.PostalCode.DataParser
    doctest AdamsDelivery

    test "parse_data" do
        geolocation_data = DataParser.parse_data
        {latitude, longitude} = Map.get(geolocation_data, "94062")

        assert is_float(latitude)
        assert is_float(longitude)
    end


end