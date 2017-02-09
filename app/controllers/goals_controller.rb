class GoalsController < ApplicationController
	def new
		@goal = Goal.new
	end

	def create
		@goal = current_user.goals.build(goal_params)
		if @goal.save
			redirect_to goals_url
		else
			render 'static_pages/home'
		end
	end

	def index
		@goals = current_user.goals
	end

	private
		def goal_params
			params.require(:goal).permit(:name, :description, 
				:target, :interval)
		end
end
