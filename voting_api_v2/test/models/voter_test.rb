require 'test_helper'

class VoterTest < ActiveSupport::TestCase
      test "voter requires parameters" do
        vote =  Voter.new
        refute vote.save
      end

      test "voter has votes" do
        joe =  Voter.create(name:"joe")
        vote = Vote.create(candidate_id:1, voter_id:joe.id)
        assert_equal 1, joe.votes.count
      end
end
