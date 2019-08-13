class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
  end

  def show
    @event = Event.find(params[:id])
    @title = @event.title
    @description = @event.description
    @price = @event.price
  end
end
