class ShirtsController < ApplicationController
  def index
    @shirts=Shirt.all
  end
  def create
    @user = current_user
    Shirt.create(name: params[:name],
              picture: params[:picture],
              s: params[:s],
              m: params[:m],
              l: params[:l],
              xl: params[:xl],
              twoxl: params[:twoxl],
              threexl: params[:threexl],
              total: params[:total],
              ordered: params[:ordered],
              events_id: params[:events_id])
              redirect_to ("/tours/#{params[:id_of_tour]}")
    end
end
