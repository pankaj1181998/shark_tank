require 'test_helper'

class ASharksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @a_shark = a_sharks(:one)
  end

  test "should get index" do
    get a_sharks_url
    assert_response :success
  end

  test "should get new" do
    get new_a_shark_url
    assert_response :success
  end

  test "should create a_shark" do
    assert_difference('AShark.count') do
      post a_sharks_url, params: { a_shark: { Deal: @a_shark.Deal, Entrepreneur_gender: @a_shark.Entrepreneur_gender, Industry: @a_shark.Industry, Season: @a_shark.Season, amount: @a_shark.amount, company: @a_shark.company, corcoran: @a_shark.corcoran, cuban: @a_shark.cuban, equity: @a_shark.equity, greiner: @a_shark.greiner, guest: @a_shark.guest, harrington: @a_shark.harrington, herjavec: @a_shark.herjavec, john: @a_shark.john, no_in_series: @a_shark.no_in_series, oleary: @a_shark.oleary, t_sharks: @a_shark.t_sharks, valuation: @a_shark.valuation } }
    end

    assert_redirected_to a_shark_url(AShark.last)
  end

  test "should show a_shark" do
    get a_shark_url(@a_shark)
    assert_response :success
  end

  test "should get edit" do
    get edit_a_shark_url(@a_shark)
    assert_response :success
  end

  test "should update a_shark" do
    patch a_shark_url(@a_shark), params: { a_shark: { Deal: @a_shark.Deal, Entrepreneur_gender: @a_shark.Entrepreneur_gender, Industry: @a_shark.Industry, Season: @a_shark.Season, amount: @a_shark.amount, company: @a_shark.company, corcoran: @a_shark.corcoran, cuban: @a_shark.cuban, equity: @a_shark.equity, greiner: @a_shark.greiner, guest: @a_shark.guest, harrington: @a_shark.harrington, herjavec: @a_shark.herjavec, john: @a_shark.john, no_in_series: @a_shark.no_in_series, oleary: @a_shark.oleary, t_sharks: @a_shark.t_sharks, valuation: @a_shark.valuation } }
    assert_redirected_to a_shark_url(@a_shark)
  end

  test "should destroy a_shark" do
    assert_difference('AShark.count', -1) do
      delete a_shark_url(@a_shark)
    end

    assert_redirected_to a_sharks_url
  end
end
