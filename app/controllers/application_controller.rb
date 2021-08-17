class ApplicationController < ActionController::Base
    include SessionsHelper
    include ColorHelper

    before_action :set_current_user
    before_action :set_current_app
    before_action :set_current_menbur

    before_action :set_color
    before_action :set_app_color
end
