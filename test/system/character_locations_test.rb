require "application_system_test_case"

class CharacterLocationsTest < ApplicationSystemTestCase
  setup do
    @character_location = character_locations(:one)
  end

  test "visiting the index" do
    visit character_locations_url
    assert_selector "h1", text: "Character Locations"
  end

  test "creating a Character location" do
    visit character_locations_url
    click_on "New Character Location"

    fill_in "Character img file", with: @character_location.character_img_file
    fill_in "Coordinates", with: @character_location.coordinates
    fill_in "Image", with: @character_location.image_id
    click_on "Create Character location"

    assert_text "Character location was successfully created"
    click_on "Back"
  end

  test "updating a Character location" do
    visit character_locations_url
    click_on "Edit", match: :first

    fill_in "Character img file", with: @character_location.character_img_file
    fill_in "Coordinates", with: @character_location.coordinates
    fill_in "Image", with: @character_location.image_id
    click_on "Update Character location"

    assert_text "Character location was successfully updated"
    click_on "Back"
  end

  test "destroying a Character location" do
    visit character_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Character location was successfully destroyed"
  end
end
