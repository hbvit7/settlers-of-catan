module PlayersHelper
	
	def current_player
		@current_player ||= session[:player_id] ? Player.find(session[:player_id]) : nil
	end

end
