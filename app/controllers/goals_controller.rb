class GoalsController < ApplicationController
	def new
		@goal = Goal.new
	end

	def create
		@user = User.new()

	def index
		@goals = current_user.goals


	private
		def goal_params
			params.require(:goal).permit(:name, :description, 
				:target, :interval)
		end
end
