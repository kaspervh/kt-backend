class RostersController < ApplicationController
  before_action :set_roster, only: %i[ show update destroy ]
  before_action :authentication

  # GET /rosters
  def index
    user_id = decode_user_data(request.headers["token"])[0]['user_data']
    @rosters = Roster.where(user_id: user_id)

    render json: @rosters
  end

  # POST /rosters
  def create
    user_id = user_id = decode_user_data(request.headers["token"])[0]['user_data']
    @roster = Roster.new(user_id: user_id, name: params[:name], data: params[:data])

    if @roster.save
      render json: Roster.where(user_id: user_id), status: :created, location: @roster
    else
      render json: @roster.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rosters/1
  def update
    user_id = user_id = decode_user_data(request.headers["token"])[0]['user_data']
    if @roster.update(user_id: user_id, name: params[:name], data: params[:data])
      render json: Roster.where(user_id: user_id)
    else
      render json: @roster.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rosters/1
  def destroy
    @roster.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roster
      @roster = Roster.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def roster_params
      params.require(:roster).permit(:user_id, :name, :data)
    end
end
