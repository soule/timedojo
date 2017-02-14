class WorkSessionsController < ApplicationController
	#before action stuff goes here
	def create 
		@work_session = current_user.work_sessions.build(work_session_params)
		puts "Dank, meme too"
		puts @work_session.inspect
		puts work_session_params.inspect
		if @work_session.save
			@work_sessions = current_user.work_sessions.limit(5)
			respond_to do |format| 
				format.html { redirect_to root_url }

				format.js
			end
			puts "Win!"
		else
			puts "fail!"
			redirect_to root_url
		end
	end

	def destroy
		@work_session = WorkSession.find(params[:id])

		if @work_session.present?
			@work_session.destroy
		end
		
			# respond_to do |format| 
			# 	format.html { redirect_to root_url }

			# 	format.js
			# end
		redirect_to root_url
	end

	private
		def work_session_params
			params.require(:work_session).permit(:length, :description, :timeStarted, :goal_id)
		end

end
