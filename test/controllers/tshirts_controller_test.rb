require 'test_helper'

class TshirtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tshirt = tshirts(:one)
  end

  test "should get index" do
    get tshirts_url
    assert_response :success
  end

  test "should get new" do
    get new_tshirt_url
    assert_response :success
  end

  test "should create tshirt" do
    assert_difference('Tshirt.count') do
      post tshirts_url, params: { tshirt: { color: @tshirt.color, price: @tshirt.price, size: @tshirt.size, stock: @tshirt.stock } }
    end

    assert_redirected_to tshirt_url(Tshirt.last)
  end

  test "should show tshirt" do
    get tshirt_url(@tshirt)
    assert_response :success
  end

  test "should get edit" do
    get edit_tshirt_url(@tshirt)
    assert_response :success
  end

  test "should update tshirt" do
    patch tshirt_url(@tshirt), params: { tshirt: { color: @tshirt.color, price: @tshirt.price, size: @tshirt.size, stock: @tshirt.stock } }
    assert_redirected_to tshirt_url(@tshirt)
  end

  test "should destroy tshirt" do
    assert_difference('Tshirt.count', -1) do
      delete tshirt_url(@tshirt)
    end

    assert_redirected_to tshirts_url
  end
end
