class Match < ActiveRecord::Base
  belongs_to :home_team, :class_name => "Team"
  belongs_to :away_team, :class_name => "Team"
  
  #validate :team_cant_play_agains_itself
  
  #def team_cant_play_agains_itself
  #	errors.add_to_base("A team can't play against itself") unless 
  #end
end

