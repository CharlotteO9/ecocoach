class EventsController < ApplicationController
  def index
    @events = policy_scope(Event)
  end
end
