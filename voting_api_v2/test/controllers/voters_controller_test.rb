require 'test_helper'

class VotersControllerTest < ActionController::TestCase
  test "should post create" do
    assert_difference("Voter.count") do
      post :create, {name:"turner",party:"none"}
    end
  end

  test "should get show" do
    get :show, {id:1}
    assert_response :success
  end

  test "should get update" do
    voter = Voter.create(name:"bobsky")
    patch :update, {id:voter.id, name:"turner"}
    assert_response :success
    voter.reload
    assert_equal "turner", voter[:name]
  end



end
