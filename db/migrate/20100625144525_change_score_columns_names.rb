class ChangeScoreColumnsNames < ActiveRecord::Migration
  def self.up
  	rename_column :matches, :home_team, :home_team_score
  	rename_column :matches, :away_team, :away_team_score
  end

  def self.down
  	rename_column :matches, :home_team_score, :home_team
  	rename_column :matches, :away_team_score, :away_team
  end
end
