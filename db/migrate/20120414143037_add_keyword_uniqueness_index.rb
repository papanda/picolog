class AddKeywordUniquenessIndex < ActiveRecord::Migration
  def change
    add_index :dialogs, :keyword, :unique => true
  end
end
