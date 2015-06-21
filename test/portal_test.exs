defmodule PortalTest do
  use ExUnit.Case

  test "creating a door and pushing a value into it" do
    Portal.Door.start_link(:pink)
    assert Portal.Door.get(:pink) == []
    val = 7
    Portal.Door.push(:pink, val)
    assert Portal.Door.get(:pink) == [val]
  end
end
