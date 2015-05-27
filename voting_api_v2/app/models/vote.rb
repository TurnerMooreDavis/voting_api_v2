class Vote < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :voter
  validates :voter_id, presence:true
  validates :candidate_id, presence:true
  
  def self.authenticate(params)
    Voter.any? {|v| v.key == params[:key]}
  end

end
