class EventsController < ApplicationController
  def index
    @events_scoped = policy_scope(Event)
    @events = Event.all
  end
end
