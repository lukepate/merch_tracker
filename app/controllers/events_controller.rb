class EventsController < ApplicationController
  def index
    @events = Event.where(id_of_tour: 1)
    @tour = params[:id]
  end
  def show
    @tour = Tour.find_by(id: params[:id])
    @tour_id = params[:id]
    @events = Event.find_by(id: params[:id])

  end

  def create
    Event.create(date: params[:date],
              venue_name: params[:venue_name],
              address: params[:address],
              compacity: params[:compacity],
              attendance: params[:attendance],
              settle: params[:settle],
              total: params[:total],
              complete: params[:complete],
              id_of_tour: params[:id_of_tour])
    redirect_to ("/tours/#{params[:id_of_tour]}")
    end
    def destroy
      Event.destroy(params[:id])
    end
end
