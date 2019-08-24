require "application_system_test_case"

class PilgrimsTest < ApplicationSystemTestCase
  setup do
    @pilgrim = pilgrims(:one)
  end

  test "visiting the index" do
    visit pilgrims_url
    assert_selector "h1", text: "Pilgrims"
  end

  test "creating a Pilgrim" do
    visit pilgrims_url
    click_on "New Pilgrim"

    fill_in "Admin", with: @pilgrim.admin_id
    fill_in "Blood", with: @pilgrim.blood
    fill_in "Name", with: @pilgrim.name
    fill_in "Phone", with: @pilgrim.phone
    fill_in "Price", with: @pilgrim.price
    fill_in "Sheep", with: @pilgrim.sheep
    check "Status" if @pilgrim.status
    fill_in "Type", with: @pilgrim.type
    click_on "Create Pilgrim"

    assert_text "Pilgrim was successfully created"
    click_on "Back"
  end

  test "updating a Pilgrim" do
    visit pilgrims_url
    click_on "Edit", match: :first

    fill_in "Admin", with: @pilgrim.admin_id
    fill_in "Blood", with: @pilgrim.blood
    fill_in "Name", with: @pilgrim.name
    fill_in "Phone", with: @pilgrim.phone
    fill_in "Price", with: @pilgrim.price
    fill_in "Sheep", with: @pilgrim.sheep
    check "Status" if @pilgrim.status
    fill_in "Type", with: @pilgrim.type
    click_on "Update Pilgrim"

    assert_text "Pilgrim was successfully updated"
    click_on "Back"
  end

  test "destroying a Pilgrim" do
    visit pilgrims_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pilgrim was successfully destroyed"
  end
end
