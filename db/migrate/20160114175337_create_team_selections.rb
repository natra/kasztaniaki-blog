class CreateTeamSelections < ActiveRecord::Migration
  def change
    create_table :team_selections do |t|
      t.string :name
      t.string :position
      t.references :club, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
