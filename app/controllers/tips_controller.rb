class TipsController < ApplicationController
  def index
    foursquare = FoursquareService.new
    @results = foursquare.tips(session[:token])
  end

  def create
    foursquare = FoursquareService.new
    foursquare.create_tips(session[:token], params[:venue_id], params[:tip])
    
    redirect_to tips_path
  end
end
