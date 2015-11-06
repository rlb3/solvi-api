class CreateChoice < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :question
      t.integer :vote_count, null: false, default: 0
      t.references :poll
    end
  end
end
