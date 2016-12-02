class CreatePodcasts < ActiveRecord::Migration[5.0]
  def change
    create_table :podcasts do |t|
      t.string :title
      t.text :description
      t.string :email
      t.string :password
      t.string :itunes

      t.timestamps
    end
  end
end
