class StaticPagesController < ApplicationController
  def home
  	#@work_session = current_user.work_sessions.build if logged_in?
  	if user_signed_in?
  		@work_sessions = current_user.work_sessions.limit(5)
  		@work_session = current_user.work_sessions.build

  		#@start_date = (current_user.created_at < 30.days.ago) ? current_user.created_at : 30.days.ago
  		#puts @start_date
  		@recent_sessions = current_user.work_sessions.where('updated_at > ? AND state == 2', 30.days.ago)

      competitors = current_user.friendships.map(&:friend_id) << current_user.id

      @competitors = User.where(id: competitors)
      #@users = User.where(id: array_of_ids).sort_by &:sessions.count

      #@competitors = @competitors.sort!  { |c| c.work_sessions.count }

  	end
  end

  def help
  end
end
