class ParticipantsController < ApplicationController
	before_action :authenticate_user!
	def create
		@participant = Participant.new(participant_params)

		if @participant.save
			redirect_to huddle_path(@participant.huddle_id)
		else
			render huddle_path(@participant.huddle_id)
		end
	end
	private
	def participant_params
		params.require(:participant).permit(:name, :last_name, :email, :huddle_id)
	end
end