class VotersController < ApplicationController
  def create
    voter = Voter.create(name:params[:name],party:params[:party],key: SecureRandom.hex)
    render json: "Your Security Key is:\n\n#{voter[:key]}\n\nDont loose it!"
  end

  def show
    voter = Voter.find_by_id(params[:id])
    if voter.authenticate(params)
      render json: voter
    else
      render json: "Your Security Key was incorrect.  Please try again"
    end
  end

  def update
    voter = Voter.find_by_id(params[:id])
    if voter.authenticate(params)
      voter.multiple_update(params)
    else
      render json: "Your Security Key was incorrect.  Please try again"
    end
  end
end
