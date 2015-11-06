class CreatePoll < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :name
      t.string :slug
      t.references :user
    end
  end
end
