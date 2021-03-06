class DirectionsController < ApplicationController
  before_action :authorize_web
  before_action :set_locale
  before_action :require_oauth, :only => [:search]
  authorize_resource :class => false

  def search
    render :layout => map_layout
  end
end
