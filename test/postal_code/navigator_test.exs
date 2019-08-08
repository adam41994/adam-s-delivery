defmodule AdamsDelivery.PostalCode.NavigatorTest do
    use ExUnit.Case
    alias AdamsDelivery.PostalCode.Navigator
    doctest AdamsDelivery

    describe "get_distance format tests" do
        test "postal code strings" do
            distance = Navigator.get_distance("94062", "94104")
            assert distance == 22.95
        end
        test "postal code integers" do
            distance = Navigator.get_distance(94062, 94104)
            assert distance == 22.95
        end
        test "postal code mixed strings and integers" do
            distance = Navigator.get_distance("94062", 94104)
            assert distance == 22.95
        end
        test "postal code unexpected format" do
            assert_raise ArgumentError, fn ->
               Navigator.get_distance("94062", 94104.434)
        end
    end
end
end