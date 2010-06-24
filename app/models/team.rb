class Team < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  #has_many :matches_as_home_team, :class_name => "Match", :foreign_key => "home_team_id"
  #has_many :matches_as_away_team, :class_name => "Match", :foreign_key => "away_team_id"
end

