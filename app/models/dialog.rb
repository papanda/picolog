class Dialog < ActiveRecord::Base
	has_many	:questions
	has_many	:results
end
