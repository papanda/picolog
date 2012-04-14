class Result < ActiveRecord::Base
	belongs_to	:user
	belongs_to	:dialog
	belongs_to	:question
	belongs_to	:choice
end
