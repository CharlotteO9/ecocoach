class SenioritiesController < ApplicationController

  def index
    @seniorities_scoped = policy_scope(Seniority)
    @seniorities = Seniority.all
  end
end
