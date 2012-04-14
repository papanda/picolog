class Question < ActiveRecord::Base
	belongs_to	:dialog
	has_many		:choices, :order => 'num ASC'
	has_many		:results
end
