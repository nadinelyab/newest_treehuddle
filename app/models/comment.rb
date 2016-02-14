class Comment < ActiveRecord::Base
	validates :name, :message, presence: true
end
