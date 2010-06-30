require 'test_helper'
require 'test/unit'

class MachesTests < ActiveSupport::TestCase
	def test_team_cant_play_against_itself
		team = Team.new(:name => 'Brazil')
		match = Match.new(:home_team => team, :away_team => team, :starting_on => Date.today)
		
		assert !match.valid?
	end
	
	def test_team_can_play_against_other
		match = Match.new(:home_team => Team.new(:name => 'Brazil'), :away_team => Team.new(:name => 'Chile'), :starting_on => Date.today)
		
		assert match.valid?
	end
	
	def test_team_cant_play_two_games_at_sametime
		team1 = Team.new(:name => 'Brazil')
		team2 = Team.new(:name => 'Chile')
		team3 = Team.new(:name => 'Argentina')
		
		match1 = Match.new(:home_team => team1, :away_team => team2, :starting_on => Date.today)
		match2 = Match.new(:home_team => team1, :away_team => team3, :starting_on => Date.today)
		
		assert match2.valid?
	end
end
