require 'test_helper'

class PilgrimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pilgrim = pilgrims(:one)
  end

  test "should get index" do
    get pilgrims_url
    assert_response :success
  end

  test "should get new" do
    get new_pilgrim_url
    assert_response :success
  end

  test "should create pilgrim" do
    assert_difference('Pilgrim.count') do
      post pilgrims_url, params: { pilgrim: { admin_id: @pilgrim.admin_id, blood: @pilgrim.blood, name: @pilgrim.name, phone: @pilgrim.phone, price: @pilgrim.price, sheep: @pilgrim.sheep, status: @pilgrim.status, type: @pilgrim.type } }
    end

    assert_redirected_to pilgrim_url(Pilgrim.last)
  end

  test "should show pilgrim" do
    get pilgrim_url(@pilgrim)
    assert_response :success
  end

  test "should get edit" do
    get edit_pilgrim_url(@pilgrim)
    assert_response :success
  end

  test "should update pilgrim" do
    patch pilgrim_url(@pilgrim), params: { pilgrim: { admin_id: @pilgrim.admin_id, blood: @pilgrim.blood, name: @pilgrim.name, phone: @pilgrim.phone, price: @pilgrim.price, sheep: @pilgrim.sheep, status: @pilgrim.status, type: @pilgrim.type } }
    assert_redirected_to pilgrim_url(@pilgrim)
  end

  test "should destroy pilgrim" do
    assert_difference('Pilgrim.count', -1) do
      delete pilgrim_url(@pilgrim)
    end

    assert_redirected_to pilgrims_url
  end
end
