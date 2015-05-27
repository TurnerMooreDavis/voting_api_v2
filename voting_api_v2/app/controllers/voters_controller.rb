class VotersController < ApplicationController
  def create
    voter = Voter.create(name:params[:name],party:params[:party])
    render json: voter
  end

  def show
    render json: Voter.find_by_id(params[:id])
  end

  def update
    voter = Voter.find_by_id(params[:id])
    voter.update(name: params[:name]) if params[:name]
    voter.update(party:params[:party]) if params[:party]
  end
end
