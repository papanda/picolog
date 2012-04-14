class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
    	t.integer		:user_id
    	t.integer		:dialog_id
    	t.integer		:question_id
    	t.integer		:choice_id
    	t.datetime	:answer_day
      t.timestamps
    end
  end
end
