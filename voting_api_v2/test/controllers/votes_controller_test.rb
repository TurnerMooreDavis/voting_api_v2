require 'test_helper'

class VotesControllerTest < ActionController::TestCase
  test "should get create" do
    voter = Voter.create(name:"bob", key:"45")
    get :create, {key:voter[:key], candidate_id: 1,voter_id: voter[:id] }
    assert_equal 1, voter.votes.count
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "can destroy vote" do
    voter = Voter.create(name:"bob", key:"45")
    get :create, {key:voter[:key], candidate_id: 1,voter_id: voter[:id] }
    vote = voter.votes.first
    delete :destroy, {id:vote[:id], key:voter[:key]}
    voter.reload
    assert_equal 0, voter.votes.count
  end

end
