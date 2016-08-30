class Participant < ActiveRecord::Base
	belongs_to :huddle

	validates :email, presence: true
end
