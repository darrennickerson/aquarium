require "application_system_test_case"

class AdsTest < ApplicationSystemTestCase
  setup do
    @ad = ads(:one)
  end

  test "visiting the index" do
    visit ads_url
    assert_selector "h1", text: "Ads"
  end

  test "creating a Ad" do
    visit ads_url
    click_on "New Ad"

    fill_in "City", with: @ad.city
    fill_in "Description", with: @ad.description
    fill_in "Phone", with: @ad.phone
    fill_in "Postal", with: @ad.postal
    fill_in "Price", with: @ad.price
    fill_in "Province", with: @ad.province
    fill_in "Title", with: @ad.title
    fill_in "User", with: @ad.user_id
    click_on "Create Ad"

    assert_text "Ad was successfully created"
    click_on "Back"
  end

  test "updating a Ad" do
    visit ads_url
    click_on "Edit", match: :first

    fill_in "City", with: @ad.city
    fill_in "Description", with: @ad.description
    fill_in "Phone", with: @ad.phone
    fill_in "Postal", with: @ad.postal
    fill_in "Price", with: @ad.price
    fill_in "Province", with: @ad.province
    fill_in "Title", with: @ad.title
    fill_in "User", with: @ad.user_id
    click_on "Update Ad"

    assert_text "Ad was successfully updated"
    click_on "Back"
  end

  test "destroying a Ad" do
    visit ads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ad was successfully destroyed"
  end
end
