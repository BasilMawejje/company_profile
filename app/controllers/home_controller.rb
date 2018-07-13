class HomeController < ApplicationController
  def index
    @contact = Home.new(params[:home])
    @contact.request = request
      if @contact.deliver
        # re-initialize Home object for cleared form
        @contact = Home.new
        redirect_to root_url
        flash[:success] = "Enquiry successfully sent"
      end
  end

  def create
  end
end
