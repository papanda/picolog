class Dialog < ActiveRecord::Base
	has_many	:questions, :order => 'num ASC'
	has_many	:choices,	:through => :questions
	has_many	:results

	validates_uniqueness_of :keyword
end
