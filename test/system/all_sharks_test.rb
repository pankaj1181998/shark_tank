require "application_system_test_case"

class AllSharksTest < ApplicationSystemTestCase
  setup do
    @all_shark = all_sharks(:one)
  end

  test "visiting the index" do
    visit all_sharks_url
    assert_selector "h1", text: "All Sharks"
  end

  test "creating a All shark" do
    visit all_sharks_url
    click_on "New All Shark"

    fill_in "Deal", with: @all_shark.Deal
    fill_in "Entrepreneur Gender", with: @all_shark.Entrepreneur_gender
    fill_in "Industry", with: @all_shark.Industry
    fill_in "Season", with: @all_shark.Season
    fill_in "Amount", with: @all_shark.amount
    fill_in "Company", with: @all_shark.company
    fill_in "Corcoran", with: @all_shark.corcoran
    fill_in "Cuban", with: @all_shark.cuban
    fill_in "Equity", with: @all_shark.equity
    fill_in "Greiner", with: @all_shark.greiner
    fill_in "Guest", with: @all_shark.guest
    fill_in "Harrington", with: @all_shark.harrington
    fill_in "Herjavec", with: @all_shark.herjavec
    fill_in "John", with: @all_shark.john
    fill_in "No In Series", with: @all_shark.no_in_series
    fill_in "Oleary", with: @all_shark.oleary
    fill_in "T Sharks", with: @all_shark.t_sharks
    fill_in "Valuation", with: @all_shark.valuation
    click_on "Create All shark"

    assert_text "All shark was successfully created"
    click_on "Back"
  end

  test "updating a All shark" do
    visit all_sharks_url
    click_on "Edit", match: :first

    fill_in "Deal", with: @all_shark.Deal
    fill_in "Entrepreneur Gender", with: @all_shark.Entrepreneur_gender
    fill_in "Industry", with: @all_shark.Industry
    fill_in "Season", with: @all_shark.Season
    fill_in "Amount", with: @all_shark.amount
    fill_in "Company", with: @all_shark.company
    fill_in "Corcoran", with: @all_shark.corcoran
    fill_in "Cuban", with: @all_shark.cuban
    fill_in "Equity", with: @all_shark.equity
    fill_in "Greiner", with: @all_shark.greiner
    fill_in "Guest", with: @all_shark.guest
    fill_in "Harrington", with: @all_shark.harrington
    fill_in "Herjavec", with: @all_shark.herjavec
    fill_in "John", with: @all_shark.john
    fill_in "No In Series", with: @all_shark.no_in_series
    fill_in "Oleary", with: @all_shark.oleary
    fill_in "T Sharks", with: @all_shark.t_sharks
    fill_in "Valuation", with: @all_shark.valuation
    click_on "Update All shark"

    assert_text "All shark was successfully updated"
    click_on "Back"
  end

  test "destroying a All shark" do
    visit all_sharks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "All shark was successfully destroyed"
  end
end
