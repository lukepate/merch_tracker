class ToursController < ApplicationController
  def index
    @user = current_user
    @tours=Tour.all

  end
  def show
    @tour = Tour.find_by(id: params[:id])
    @tour_id = params[:id]
    @events = Event.where(id_of_tour: @tour_id)
  end

  def create
    @user = current_user
    Tour.create(name: params[:name],
              complete: params[:complete],
              total: params[:total],
              user_id: current_user.id)
  end
  end
