class Api::GuestsController < ApplicationController
  def index
    @guests = Guest.all
    render :index
  end

  def show
    @guest = Guest.includes(:gifts).find_by(id: params[:id])
    # Note use of includes here to prefetch a guest's gifts in a SQL query to avoid N+1 queries down the line in our jbuilder response
    render :show
  end
end
