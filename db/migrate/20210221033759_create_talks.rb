class CreateTalks < ActiveRecord::Migration[6.0]
  def change
    create_table :talks do |t|
      t.text :comment
      t.timestamps
    end
  end
end
