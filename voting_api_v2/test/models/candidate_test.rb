require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  test "candidate requires parameters" do
    bob =  Candidate.new
    refute bob.save
  end
  test "candidate has votes" do
    bob =  Candidate.create(name:"bob",hometown:"bobsville",district:2)
    vote = Vote.create(candidate_id:bob.id, voter_id:1)
    assert_equal 1, bob.votes.count
  end
end
