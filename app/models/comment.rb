class Comment < ActiveRecord::Base
	belongs_to :huddle

	validates :name, :message, presence: true
end
