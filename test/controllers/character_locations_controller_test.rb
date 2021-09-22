require 'test_helper'

class CharacterLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character_location = character_locations(:one)
  end

  test "should get index" do
    get character_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_character_location_url
    assert_response :success
  end

  test "should create character_location" do
    assert_difference('CharacterLocation.count') do
      post character_locations_url, params: { character_location: { character_img_file: @character_location.character_img_file, coordinates: @character_location.coordinates, image_id: @character_location.image_id } }
    end

    assert_redirected_to character_location_url(CharacterLocation.last)
  end

  test "should show character_location" do
    get character_location_url(@character_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_location_url(@character_location)
    assert_response :success
  end

  test "should update character_location" do
    patch character_location_url(@character_location), params: { character_location: { character_img_file: @character_location.character_img_file, coordinates: @character_location.coordinates, image_id: @character_location.image_id } }
    assert_redirected_to character_location_url(@character_location)
  end

  test "should destroy character_location" do
    assert_difference('CharacterLocation.count', -1) do
      delete character_location_url(@character_location)
    end

    assert_redirected_to character_locations_url
  end
end
