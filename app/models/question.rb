class Question < ActiveRecord::Base
	belongs_to	:dialog
	has_many		:choices
	has_many		:results
end
