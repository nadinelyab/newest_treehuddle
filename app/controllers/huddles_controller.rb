class HuddlesController < ApplicationController
	before_action :authenticate_user!
	def new
		@huddle = Huddle.new
	end

	def index
		@query = params[:query]

		if @query
			@huddles = Huddle.advanced_search(@query)
		else
			@huddles = Huddle.all
		end
	end

	def show
		@huddle = Huddle.find(params[:id])
		@participants = @huddle.participants
		@participant = Participant.new
		@comments = @huddle.comments
		@comment = Comment.new
	end

	def create
		@huddle = Huddle.new(huddle_params)
		@huddle.creator = current_user.name
		@huddle.email = current_user.email

		if @huddle.save
			redirect_to huddles_path
		else
			render :new
		end
	end

	def edit
		@huddle = Huddle.find(params[:id])
	end

	def update
		@huddle = Huddle.find(params[:id])

		if @huddle.update(huddle_params)
			redirect_to huddles_path
		else
			render :edit
		end
	end

	def destroy
		@huddle = Huddle.find(params[:id])

		@huddle.destroy

		redirect_to huddle_path
	end

  private
  	def huddle_params
  		params.require(:huddle).permit(:subject, :assignment, :creator, :email, :where, :start_time,
  			:end_time, :date, :message, :part_max)
  	end
end