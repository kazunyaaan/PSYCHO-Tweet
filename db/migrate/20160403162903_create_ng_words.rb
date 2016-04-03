class CreateNgWords < ActiveRecord::Migration
  def change
    create_table :ng_words do |t|
      t.string :word
      t.integer :point

      t.timestamps null: false
    end
  end
end
