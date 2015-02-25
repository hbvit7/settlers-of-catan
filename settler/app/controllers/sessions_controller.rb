class SessionsController < ApplicationController

	def create
		@player = Player.find_by_credentials(session_params)

		if @player
			login!(@player)

			redirect_to 
	end

	private

	def session_params
		params.require(:player).permit(:email, :password)
	end
end