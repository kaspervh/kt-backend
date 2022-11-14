require "test_helper"

class UnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit = units(:one)
  end

  test "should get index" do
    get units_url, as: :json
    assert_response :success
  end

  test "should create unit" do
    assert_difference("Unit.count") do
      post units_url, params: { unit: { armor_save: @unit.armor_save, attacks: @unit.attacks, balistics_skill: @unit.balistics_skill, initiative: @unit.initiative, leadership: @unit.leadership, name: @unit.name, price: @unit.price, strength: @unit.strength, toughness: @unit.toughness, unit_type: @unit.unit_type, weapon_skill: @unit.weapon_skill, wounds: @unit.wounds } }, as: :json
    end

    assert_response :created
  end

  test "should show unit" do
    get unit_url(@unit), as: :json
    assert_response :success
  end

  test "should update unit" do
    patch unit_url(@unit), params: { unit: { armor_save: @unit.armor_save, attacks: @unit.attacks, balistics_skill: @unit.balistics_skill, initiative: @unit.initiative, leadership: @unit.leadership, name: @unit.name, price: @unit.price, strength: @unit.strength, toughness: @unit.toughness, unit_type: @unit.unit_type, weapon_skill: @unit.weapon_skill, wounds: @unit.wounds } }, as: :json
    assert_response :success
  end

  test "should destroy unit" do
    assert_difference("Unit.count", -1) do
      delete unit_url(@unit), as: :json
    end

    assert_response :no_content
  end
end
