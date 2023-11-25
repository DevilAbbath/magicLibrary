class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.references :state, null:false, foreing_key: true, :default => 1
      t.string :title
      t.string :author
      t.string :publisher
      t.string :genre
      t.date :published
      t.string :synopsis

      t.timestamps
    end
  end
end
