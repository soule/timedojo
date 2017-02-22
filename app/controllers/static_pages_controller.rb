class StaticPagesController < ApplicationController
  def home
  	#@work_session = current_user.work_sessions.build if logged_in?
  	if user_signed_in?
  		#@work_sessions = current_user.work_sessions.limit(5)
      @work_sessions = current_user.work_sessions.where(state: 2).paginate(page: params[:page], per_page: 5)
  		@work_session = current_user.work_sessions.build

      #@friends = current_user.friends.paginate(page: params[:page], per_page: 5)

  		#@start_date = (current_user.created_at < 30.days.ago) ? current_user.created_at : 30.days.ago
  		#puts @start_date
  		#@recent_sessions = current_user.work_sessions.where('updated_at > ? AND state == 2', 30.days.ago)
      @recent_sessions = current_user.work_sessions.where(state: 2)

      competitors = current_user.friends.map(&:id) << current_user.id

      #@competitors = User.where(id: competitors)
      #@competitors = User.where(id: competitors).order('work_sessions_count desc')
      @competitors = User.where(id: competitors).sort_by { |guy| guy.work_sessions.where('updated_at > ? AND state = 2', 30.days.ago).count * -1 }[0..4]

      #@competitors = @competitors.sort!  { |c| c.work_sessions.count }

      if Rails.env.development?
        @pomodoro_length = 10
        @short_break_length = 5
        @long_break_length = 7
      else
        @pomodoro_length = 1500;
        @short_break_length = 300;
        @long_break_length = 900;
      end
  	end
  end

  def help
  end
end
