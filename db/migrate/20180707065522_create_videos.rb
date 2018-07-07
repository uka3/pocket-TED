class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|

      t.integer :category_id
      t.string :title
      

      t.timestamps
    end
  end
end
