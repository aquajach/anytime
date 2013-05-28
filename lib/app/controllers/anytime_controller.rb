require 'action_controller/base'

class AnytimeController < ActionController::Base

  def freeze
    date = params[:date]
    if defined?(current_user) and current_user
      user = current_user
      sign_out user
    end
    Anytime.freeze_at(date[:year].to_i, date[:month].to_i, date[:day].to_i, date[:hour].to_i, date[:minute].to_i, date[:second].to_i)
    if defined?(user) and user
      sign_in user
    end
    redirect_to :back
  end

  def unfreeze
    Anytime.unfreeze!
    redirect_to :back
  end
end
