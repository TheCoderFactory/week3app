class PagesController < ApplicationController
	skip_before_action :authenticate_user!, except: :admin
  def contact
  end

  def about
  end

  def admin
  	@profiles = Profile.all
  end
end
