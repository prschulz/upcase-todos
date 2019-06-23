class TodosController < ApplicationController
	before_action :require_login

	def index
		@todos = current_user.todos
	end

	def new
		@todo = Todo.new
	end

	def create
		current_user.todos.create(todo_params)
		redirect_to root_path
	end

	private

	def todo_params
	  params.require(:todo).permit(:title, :user_id)
	end

end
