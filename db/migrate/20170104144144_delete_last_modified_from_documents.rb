class DeleteLastModifiedFromDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :last_modified
  end
end
