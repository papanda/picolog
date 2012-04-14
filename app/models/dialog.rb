class Dialog < ActiveRecord::Base
	has_many	:questions
	has_many	:results

	validates_uniqueness_of :keyword
end
