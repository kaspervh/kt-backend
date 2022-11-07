require "test_helper"

class FactionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faction = factions(:one)
  end

  test "should get index" do
    get factions_url, as: :json
    assert_response :success
  end

  test "should create faction" do
    assert_difference("Faction.count") do
      post factions_url, params: { faction: { name: @faction.name } }, as: :json
    end

    assert_response :created
  end

  test "should show faction" do
    get faction_url(@faction), as: :json
    assert_response :success
  end

  test "should update faction" do
    patch faction_url(@faction), params: { faction: { name: @faction.name } }, as: :json
    assert_response :success
  end

  test "should destroy faction" do
    assert_difference("Faction.count", -1) do
      delete faction_url(@faction), as: :json
    end

    assert_response :no_content
  end
end
