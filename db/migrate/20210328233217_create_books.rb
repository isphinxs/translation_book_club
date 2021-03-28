class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.belongs_to :language, null: false, foreign_key: true
      t.belongs_to :member, null: false, foreign_key: true
      t.belongs_to :publisher, null: false, foreign_key: true
      t.belongs_to :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
