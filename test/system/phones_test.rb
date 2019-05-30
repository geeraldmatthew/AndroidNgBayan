require "application_system_test_case"

class PhonesTest < ApplicationSystemTestCase
  setup do
    @phone = phones(:one)
  end

  test "visiting the index" do
    visit phones_url
    assert_selector "h1", text: "Phones"
  end

  test "creating a Phone" do
    visit phones_url
    click_on "New Phone"

    fill_in "Brand", with: @phone.brand
    fill_in "Camera", with: @phone.camera
    fill_in "Internal storage", with: @phone.internal_storage
    fill_in "Mpixels", with: @phone.mpixels
    fill_in "Name", with: @phone.name
    fill_in "Operating system", with: @phone.operating_system
    fill_in "Screen size", with: @phone.screen_size
    fill_in "Sim", with: @phone.sim
    fill_in "Stock", with: @phone.stock
    fill_in "Year released", with: @phone.year_released
    click_on "Create Phone"

    assert_text "Phone was successfully created"
    click_on "Back"
  end

  test "updating a Phone" do
    visit phones_url
    click_on "Edit", match: :first

    fill_in "Brand", with: @phone.brand
    fill_in "Camera", with: @phone.camera
    fill_in "Internal storage", with: @phone.internal_storage
    fill_in "Mpixels", with: @phone.mpixels
    fill_in "Name", with: @phone.name
    fill_in "Operating system", with: @phone.operating_system
    fill_in "Screen size", with: @phone.screen_size
    fill_in "Sim", with: @phone.sim
    fill_in "Stock", with: @phone.stock
    fill_in "Year released", with: @phone.year_released
    click_on "Update Phone"

    assert_text "Phone was successfully updated"
    click_on "Back"
  end

  test "destroying a Phone" do
    visit phones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Phone was successfully destroyed"
  end
end
