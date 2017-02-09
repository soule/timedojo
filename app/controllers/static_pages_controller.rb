class StaticPagesController < ApplicationController
  def home
  	#@work_session = current_user.work_sessions.build if logged_in?
  	if user_signed_in?
  		@work_sessions = current_user.work_sessions.limit(5)
  		@work_session = current_user.work_sessions.build
  	end
  end

  def help
  end
end
