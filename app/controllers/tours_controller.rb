class ToursController < ApplicationController
  def index
    @user = current_user
    @tours=Tour.where(user_id: current_user.id)
    @shirts=Shirt.all

  end
  def show
    @shirts=Shirt.all
    @tour = Tour.find_by(id: params[:id])
    @tour_id = params[:id]
    @events = Event.where(id_of_tour: @tour_id)
    # @current_event = Event.where(id: )
    # @merch = Shirt.where(events_id: @current_event.id)

  end

  def create
    @shirts=Shirt.all
    @user = current_user
    Tour.create(name: params[:name],
              complete: params[:complete],
              total: params[:total],
              user_id: current_user.id)
    redirect_to ("/tours")
  end
  def destroy
    Tour.destroy(params[:id])
    redirect_to ("/")
  end
  end
