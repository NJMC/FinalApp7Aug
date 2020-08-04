require 'test_helper'

class RegionalProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regional_profile = regional_profiles(:one)
  end

  test "should get index" do
    get regional_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_regional_profile_url
    assert_response :success
  end

  test "should create regional_profile" do
    assert_difference('RegionalProfile.count') do
      post regional_profiles_url, params: { regional_profile: { county: @regional_profile.county, description: @regional_profile.description, environment_id: @regional_profile.environment_id, image_url: @regional_profile.image_url, local_govt: @regional_profile.local_govt, name: @regional_profile.name, population: @regional_profile.population, updated: @regional_profile.updated } }
    end

    assert_redirected_to regional_profile_url(RegionalProfile.last)
  end

  test "should show regional_profile" do
    get regional_profile_url(@regional_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_regional_profile_url(@regional_profile)
    assert_response :success
  end

  test "should update regional_profile" do
    patch regional_profile_url(@regional_profile), params: { regional_profile: { county: @regional_profile.county, description: @regional_profile.description, environment_id: @regional_profile.environment_id, image_url: @regional_profile.image_url, local_govt: @regional_profile.local_govt, name: @regional_profile.name, population: @regional_profile.population, updated: @regional_profile.updated } }
    assert_redirected_to regional_profile_url(@regional_profile)
  end

  test "should destroy regional_profile" do
    assert_difference('RegionalProfile.count', -1) do
      delete regional_profile_url(@regional_profile)
    end

    assert_redirected_to regional_profiles_url
  end
end
