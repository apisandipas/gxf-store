class Admin::DashboardController < ApplicationController
  
  before_filter :authorize

  layout 'admin-dash'

  def index
  end

end
