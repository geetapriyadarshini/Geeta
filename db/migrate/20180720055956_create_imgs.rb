class CreateImgs < ActiveRecord::Migration[5.2]
  def change
    create_table :imgs do |t|
      t.string :real_name
      t.string :image_name

      t.timestamps
    end
  end
end
