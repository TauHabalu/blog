class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.srting :commenter
      t.text :body
      t.reference :article, index: true, foreign_key: true

      t.timestamps
    end
    
  end
end
