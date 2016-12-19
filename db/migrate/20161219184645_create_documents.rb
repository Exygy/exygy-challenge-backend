class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :name
      t.string :title
      t.string :modified_by
      t.date :last_modified
      t.string :status
      t.string :country
      t.boolean :stared

      t.timestamps
    end
  end
end
