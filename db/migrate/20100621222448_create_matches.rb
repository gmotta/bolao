class CreateMatches < ActiveRecord::Migration
  def self.up
    create_table :matches do |t|
      t.datetime :starting_on
      t.string :location
      t.string :description
      t.integer :away_team_id
      t.integer :home_team_id
      t.timestamps
    end
  end

  def self.down
    drop_table :matches
  end
end

