class WorkSessionsController < ApplicationController
	#before action stuff goes here

	def create 


		@work_session = current_user.work_sessions.build(work_session_params)
		if @work_session.save
			@work_sessions = current_user.work_sessions.limit(5)
			respond_to do |f| 
				f.js { render layout: false, content_type: 'text/javascript'}
				f.html
			end
		else
			render 'static_pages/home'
		end
	end

	private
		def work_session_params
			params.require(:work_session).permit(:length, :description, :timeStarted)
		end

end
