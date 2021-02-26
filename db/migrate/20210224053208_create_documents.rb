class CreateDocuments < ActiveRecord::Migration[6.1]
  def change
    create_table :documents do |t|
      t.string :user_id
      t.string :documentname
      t.string :documentid
      t.string :documentype

      t.timestamps
    end
  end
end

