class UnitsController < ApplicationController
  before_action :set_unit, only: %i[ show update destroy ]

  # GET /units
  def index
    @units = Unit.where(faction_id: params[:faction_id])

    units = @units.map do |unit|
      special_rules = unit.special_rules.as_json
      weapon_options = unit.weapon_options.as_json
      armourys = unit.armourys.as_json

      unit.as_json.merge(special_rules: special_rules, weapon_options: weapon_options, armourys: armourys)
    end
    
    render json: units
  end

  # Out cmmented untill admin user has been set up

  # # GET /units/1
  # def show
  #   render json: @unit
  # end

  # # POST /units
  # def create
  #   @unit = Unit.new(unit_params)

  #   if @unit.save
  #     render json: @unit, status: :created, location: @unit
  #   else
  #     render json: @unit.errors, status: :unprocessable_entity
  #   end
  # end

  # # PATCH/PUT /units/1
  # def update
  #   if @unit.update(unit_params)
  #     render json: @unit
  #   else
  #     render json: @unit.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /units/1
  # def destroy
  #   @unit.destroy
  # end

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_unit
  #     @unit = Unit.find(params[:id])
  #   end

  #   # Only allow a list of trusted parameters through.
  #   def unit_params
  #     params.require(:unit).permit(:name, :weapon_skill, :balistics_skill, :strength, :toughness, :wounds, :initiative, :attacks, :leadership, :armor_save, :unit_type, :price)
  #   end
end
