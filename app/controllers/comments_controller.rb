class CommentsController < ApplicationController
	def create
		@comment = Comment.new(comment_params)

		if @comment.save
			redirect_to huddle_path(@comment.huddle_id)
		else
			render huddle_path(@commment.huddle_id)
		end
	end
	private
	def comment_params
		params.require(:comment).permit(:name, :message, :huddle_id)
	end
end