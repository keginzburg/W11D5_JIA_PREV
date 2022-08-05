class Api::PartiesController < ApplicationController
  def index
    @parties = Party.all
    render :index
  end

  def show
    @party = Party.includes(guests: [:gifts]).find_by(id: params[:id])
    # Note use of includes here to prefetch a party's guests and those guests' gifts in a SQL query to avoid N+1 queries down the line in our jbuilder response
    # See jbuilder views to observe how we access each party's .guests and each guest's .gifts associations.
    render :show
  end
end
