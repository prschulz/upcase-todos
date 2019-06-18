class TodosController < ApplicationController
	before_action :authenticate
	before_action :set_user

	def index
		@todos = Todo.where(email: @email)
	end

	def new
		@todo = Todo.new
	end

	def create
		@todo = Todo.new(todo_params)
		@todo.email = @email
		@todo.save
		redirect_to root_path
	end

	private

	def todo_params
	  params.require(:todo).permit(:title, :email)
	end

	def set_user
		@email = session[:current_email]
	end

end
