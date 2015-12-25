class VenuesController < ApplicationController
  def new
    
  end

  def create
    region = Region.find(params[:venue][:region])
    @venue = Venue.new(venue_params) 
    @venue.region = region   
    if @venue.save
      redirect_to root_path,flash: {success: "Successfully created a new Venue"}   
    end
  end

  private
  def venue_params
      params.require(:venue).permit(:name,:full_address)
  end
  
end
