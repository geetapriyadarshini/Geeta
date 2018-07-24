class StatesController < ApplicationController
	def index
	@states = State.all
	end	
	def new
	@state = State.new	
	end
def create
	@state = State.new(state_params)
	@state.save
	redirect_to @state
end
def show
	@state= State.find(params[:id])	
	end
def update
	@state = State.find(params[:id])	
	if @state.update(state_params)
		redirect_to @state
	end
end
def edit
	@state = State.find(params[:id])
end
def destroy
	@state= State.find(params[:id])	
	@state.destroy
	redirect_to @state
end
private
def state_params
	params.require(:state).permit(:state_name)
end
end
