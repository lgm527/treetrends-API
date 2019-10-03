class StewardsController < ApplicationController
  before_action :set_steward, only: [:show, :update, :destroy]

# GET /stewards
def index
  @stewards = Steward.all

  render json: @stewards, include: [:user, :tree]
end

# GET /stewards/1
def show
  render json: @steward
end

# POST /stewards
def create
  @steward = Steward.new(steward_params)

  if @steward.save
    render json: @steward, status: :created, location: @steward
  else
    render json: @steward.errors, status: :unprocessable_entity
  end
end

# PATCH/PUT /stewards/1
def update
  if @steward.update(steward_params)
    render json: @steward
  else
    render json: @steward.errors, status: :unprocessable_entity
  end
end

# DELETE /stewards/1
def destroy
  @steward.destroy
end

private
  # Use callbacks to share common setup or constraints between actions.
  def set_steward
    @steward = Steward.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def steward_params
    params.permit(:user_id, :tree_id)
  end

end
