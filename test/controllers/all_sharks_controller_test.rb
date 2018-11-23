require 'test_helper'

class AllSharksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @all_shark = all_sharks(:one)
  end

  test "should get index" do
    get all_sharks_url
    assert_response :success
  end

  test "should get new" do
    get new_all_shark_url
    assert_response :success
  end

  test "should create all_shark" do
    assert_difference('AllShark.count') do
      post all_sharks_url, params: { all_shark: { Deal: @all_shark.Deal, Entrepreneur_gender: @all_shark.Entrepreneur_gender, Industry: @all_shark.Industry, Season: @all_shark.Season, amount: @all_shark.amount, company: @all_shark.company, corcoran: @all_shark.corcoran, cuban: @all_shark.cuban, equity: @all_shark.equity, greiner: @all_shark.greiner, guest: @all_shark.guest, harrington: @all_shark.harrington, herjavec: @all_shark.herjavec, john: @all_shark.john, no_in_series: @all_shark.no_in_series, oleary: @all_shark.oleary, t_sharks: @all_shark.t_sharks, valuation: @all_shark.valuation } }
    end

    assert_redirected_to all_shark_url(AllShark.last)
  end

  test "should show all_shark" do
    get all_shark_url(@all_shark)
    assert_response :success
  end

  test "should get edit" do
    get edit_all_shark_url(@all_shark)
    assert_response :success
  end

  test "should update all_shark" do
    patch all_shark_url(@all_shark), params: { all_shark: { Deal: @all_shark.Deal, Entrepreneur_gender: @all_shark.Entrepreneur_gender, Industry: @all_shark.Industry, Season: @all_shark.Season, amount: @all_shark.amount, company: @all_shark.company, corcoran: @all_shark.corcoran, cuban: @all_shark.cuban, equity: @all_shark.equity, greiner: @all_shark.greiner, guest: @all_shark.guest, harrington: @all_shark.harrington, herjavec: @all_shark.herjavec, john: @all_shark.john, no_in_series: @all_shark.no_in_series, oleary: @all_shark.oleary, t_sharks: @all_shark.t_sharks, valuation: @all_shark.valuation } }
    assert_redirected_to all_shark_url(@all_shark)
  end

  test "should destroy all_shark" do
    assert_difference('AllShark.count', -1) do
      delete all_shark_url(@all_shark)
    end

    assert_redirected_to all_sharks_url
  end
end
