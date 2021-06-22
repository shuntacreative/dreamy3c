class DonesController < ApplicationController
  def index
    @dones = Done.all
  end

  def new
    @done = Done.new
  end

  def create
    @done = Done.new(done_params)
    if @done.save
      redirect_to dones_path
    else
      render 'new'
    end
  end

  def add
    @done = Done.add(done_params)
    redirect_to dones_path
  end


  def edit
    @done = Done.find(params[:id])
  end

  def update
    @done = Done.find(params[:id])
    @done.update(done_params) 
      redirect_to dones_url
  end

  def destroy
    @done = Done.find(params[:id])
    @done.destroy
    redirect_to dones_url
  end

  

  private
  def done_params
    params.require(:done).permit(:body)
  end
end
