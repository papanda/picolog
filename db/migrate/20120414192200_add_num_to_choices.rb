class AddNumToChoices < ActiveRecord::Migration
  def change
    add_column :choices, :num, :integer
  end
end
