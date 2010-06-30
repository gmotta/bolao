require 'test_helper'

class MatchesControllerTest < ActionController::TestCase
  test "should create match" do
    assert_difference('Match.count') do
      post :create, :match => { :home_team => teams(:brazil), :away_team => teams(:chile), :starting_on => Date.new }
    end

    assert_redirected_to matches_path
  end
  
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matches)
  end
  
  test "team cant play two games at sametime" do 
  	post :create, :match => { :home_team_id => 1, :away_team_id => 2, :starting_on => Date.new }
  	post :create, :match => { :home_team_id => 1, :away_team_id => 3, :starting_on => Date.new }
  	
  	assert_equal assigns(:match).errors.count, 1 
  end
  
end
