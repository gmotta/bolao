class AddScoreToMatches < ActiveRecord::Migration
  def self.up
    add_column :matches, :home_team, :integer
    add_column :matches, :away_team, :integer
  end

  def self.down
    remove_column :matches, :away_team
    remove_column :matches, :home_team
  end
end
