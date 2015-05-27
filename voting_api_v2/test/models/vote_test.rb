require 'test_helper'

class VoteTest < ActiveSupport::TestCase
    test "vote requires parameters" do
      vote =  Vote.new
      refute vote.save
    end

    test "vote belongs to candidate and voter" do
      bob =  Candidate.create(name:"bob",hometown:"bobsville",district:2)
      joe =  Voter.create(name:"joe")
      vote = Vote.create(candidate_id:bob.id, voter_id:joe.id)
      assert_equal 1, joe.votes.count
      assert_equal 1, bob.votes.count
    end
end
