class Dialog < ActiveRecord::Base
	has_many	:questions,	:results
end
