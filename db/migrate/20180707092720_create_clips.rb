class CreateClips < ActiveRecord::Migration[5.2]
  def change
    create_table :clips do |t|
       t.references :user, null:false
       t.references :video, null:false
       t.timestamps null: false
  end

  add_index :clips, :video_id
end
end
