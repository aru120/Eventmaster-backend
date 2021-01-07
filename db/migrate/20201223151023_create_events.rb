class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :artists, array: true, default: []
      t.string :venue
      t.string :date
      t.string :image
      
      t.timestamps
    end
  end
end
