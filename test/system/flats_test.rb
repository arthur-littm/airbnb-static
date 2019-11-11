require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit root_url # localhost:3000/

    assert_selector "h1", text: "Checkout our Flats"
  end
end
