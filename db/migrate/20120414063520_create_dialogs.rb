class CreateDialogs < ActiveRecord::Migration
  def change
    create_table :dialogs do |t|
    	t.string :name
    	t.string :keyword
      t.timestamps
    end
  end
end
