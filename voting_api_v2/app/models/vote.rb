class Vote < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :voter
  validates :voter_id, presence:true
  validates :candidate_id, presence:true
end
