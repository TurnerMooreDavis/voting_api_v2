class Voter < ActiveRecord::Base
  has_many :votes
  validates :name, presence:true

  def authenticate(params)
    params[:key] == self[:key]
  end

  def multiple_update(params)
    update(name: params[:name]) if params[:name]
    update(party:params[:party]) if params[:party]
  end

end
