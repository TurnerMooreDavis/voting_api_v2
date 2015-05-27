class VotesController < ApplicationController
  def index
    render json: Vote.all
  end

  def create
    vote = Vote.create(candidate_id:params[:candidate_id],voter_id:params[:voter_id])
    render json: vote
  end
end
