class CreateSnippets < ActiveRecord::Migration[5.0]
  def change
    create_table :snippets do |t|
      t.string :title, null: false, default: 'Untitled'
      t.text :description
      t.text :code

      t.timestamps
    end
  end
end
