class MessagesController < ApplicationController

	before_action	:require_user

	def create
		message = current_user.messages.build(params.require(:message).permit(:body))
		if message.save
			redirect_to root_path
		end
	end
end
