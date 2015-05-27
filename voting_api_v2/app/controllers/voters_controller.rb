class VotersController < ApplicationController
  def create
  end

  def show
    render json: Voter.find_by_id(params[:id])
  end

  def update
  end
end
