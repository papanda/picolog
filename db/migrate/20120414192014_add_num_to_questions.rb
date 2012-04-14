class AddNumToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :num, :integer
  end
end
