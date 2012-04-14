class Choice < ActiveRecord::Base
	belongs_to	:question
	belongs_to	:results
end
