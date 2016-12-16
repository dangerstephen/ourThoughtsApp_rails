class ThoughtsController < ApplicationController

  def index
  @thoughts = Thought.all
  end

#   def show
#     thought_id = params[:id]
#     @thought = Thought.find(thought_id)
#   end
#
  def new
    @thought = Thought.new()
  end

  def create
  Thought.create(thought_params)
  redirect_to('/thoughts')
end

def edit
  thought_id = params[:id]
  @thought = Thought.find(thought_id)
end

def update
  thought_id = params[:id]
  @thought = Thought.find(thought_id)

  if @thought.update(thought_params)
    redirect_to ("/thoughts")
  else
    render 'edit'
  end
end

def destroy
  thought_id = params[:id]
  @thought = Thought.find(thought_id)
  @thought.destroy

  redirect_to('/thoughts')
end

private # Everything below is only able to be used in this controller

def thought_params
  params.require(:thought).permit(:description, :category)

end

end
