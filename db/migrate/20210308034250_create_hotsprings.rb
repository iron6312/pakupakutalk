class CreateHotsprings < ActiveRecord::Migration[6.0]
  def change
    create_table :hotsprings do |t|
      t.text :thread
      t.timestamps
    end
  end
end
