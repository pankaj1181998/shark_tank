require "application_system_test_case"

class ASharksTest < ApplicationSystemTestCase
  setup do
    @a_shark = a_sharks(:one)
  end

  test "visiting the index" do
    visit a_sharks_url
    assert_selector "h1", text: "A Sharks"
  end

  test "creating a A shark" do
    visit a_sharks_url
    click_on "New A Shark"

    fill_in "Deal", with: @a_shark.Deal
    fill_in "Entrepreneur Gender", with: @a_shark.Entrepreneur_gender
    fill_in "Industry", with: @a_shark.Industry
    fill_in "Season", with: @a_shark.Season
    fill_in "Amount", with: @a_shark.amount
    fill_in "Company", with: @a_shark.company
    fill_in "Corcoran", with: @a_shark.corcoran
    fill_in "Cuban", with: @a_shark.cuban
    fill_in "Equity", with: @a_shark.equity
    fill_in "Greiner", with: @a_shark.greiner
    fill_in "Guest", with: @a_shark.guest
    fill_in "Harrington", with: @a_shark.harrington
    fill_in "Herjavec", with: @a_shark.herjavec
    fill_in "John", with: @a_shark.john
    fill_in "No In Series", with: @a_shark.no_in_series
    fill_in "Oleary", with: @a_shark.oleary
    fill_in "T Sharks", with: @a_shark.t_sharks
    fill_in "Valuation", with: @a_shark.valuation
    click_on "Create A shark"

    assert_text "A shark was successfully created"
    click_on "Back"
  end

  test "updating a A shark" do
    visit a_sharks_url
    click_on "Edit", match: :first

    fill_in "Deal", with: @a_shark.Deal
    fill_in "Entrepreneur Gender", with: @a_shark.Entrepreneur_gender
    fill_in "Industry", with: @a_shark.Industry
    fill_in "Season", with: @a_shark.Season
    fill_in "Amount", with: @a_shark.amount
    fill_in "Company", with: @a_shark.company
    fill_in "Corcoran", with: @a_shark.corcoran
    fill_in "Cuban", with: @a_shark.cuban
    fill_in "Equity", with: @a_shark.equity
    fill_in "Greiner", with: @a_shark.greiner
    fill_in "Guest", with: @a_shark.guest
    fill_in "Harrington", with: @a_shark.harrington
    fill_in "Herjavec", with: @a_shark.herjavec
    fill_in "John", with: @a_shark.john
    fill_in "No In Series", with: @a_shark.no_in_series
    fill_in "Oleary", with: @a_shark.oleary
    fill_in "T Sharks", with: @a_shark.t_sharks
    fill_in "Valuation", with: @a_shark.valuation
    click_on "Update A shark"

    assert_text "A shark was successfully updated"
    click_on "Back"
  end

  test "destroying a A shark" do
    visit a_sharks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "A shark was successfully destroyed"
  end
end
