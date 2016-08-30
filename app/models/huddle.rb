class Huddle < ActiveRecord::Base
	has_many :participants
	has_many :comments

	validates :subject, :assignment, :creator, :email, :where, :date,
	 :start_time, :end_time, presence: true
end
