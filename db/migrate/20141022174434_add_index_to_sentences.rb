class AddIndexToSentences < ActiveRecord::Migration
  def up

    add_index :sentences, :id
  end  
  def down

    remove_index :sentences, :id
  end
end
