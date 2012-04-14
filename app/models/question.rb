class Question < ActiveRecord::Base
	belongs_to	:dialog
	has_many		:choices,	:results
end
