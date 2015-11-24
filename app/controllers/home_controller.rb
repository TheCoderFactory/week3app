class HomeController < ApplicationController
	skip_before_action :authenticate_user!
  def index
  	@status_update = StatusUpdate.new
  	@status_updates = StatusUpdate.reverse_order
  end
end
