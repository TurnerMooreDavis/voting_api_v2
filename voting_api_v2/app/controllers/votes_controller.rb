class VotesController < ApplicationController
  def index
    string = ""
   candidates = Candidate.all
   candidates.each {|c| string += "#{c[:name]}:#{c.votes.count}\n"}
   render json: string
  end

  def create
    if Vote.authenticate(params)
      render json: Vote.create(candidate_id:params[:candidate_id],voter_id:params[:voter_id])
    else
      render json: "Your Security Key was incorrect.  Please try again"
    end
  end
  def destroy
    if Vote.authenticate(params)
      vote = Vote.find_by_id(params[:id])
      vote.delete
    else
      render json: "Your Security Key was incorrect.  Please try again"
    end
  end

end
