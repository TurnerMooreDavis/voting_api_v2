class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :hometown
      t.string :party
      t.string :district

      t.timestamps null: false
    end
  end
end
