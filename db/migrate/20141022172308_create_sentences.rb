class CreateSentences < ActiveRecord::Migration
  def up
    create_table :sentences do |t|
      t.text :body

      t.timestamps
    end
  end

  def down
    drop_table :sentences
    
  end
end
