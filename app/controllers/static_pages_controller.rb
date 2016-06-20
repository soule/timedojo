class StaticPagesController < ApplicationController
  def home
  	#@work_session = current_user.work_sessions.build if logged_in?
  	if logged_in?
  		@work_sessions = current_user.work_sessions.limit(5)
  	end
  end

  def help
  end
end
