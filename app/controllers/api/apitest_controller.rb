class Api::ApitestController < ApplicationController
  def index
    @calender = HTTP.get("https://calendarific.com/api/v2/holidays?&api_key=#{ENV["calender_api"]}&country=#{params[:country]}&year=#{params[:year]}").parse
    render 'index.json.jb'
  end
end
