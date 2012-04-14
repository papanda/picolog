class Choice < ActiveRecord::Base
	belongs_to	:question,	:results
end
