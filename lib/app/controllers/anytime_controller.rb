require 'action_controller/base'

class AnytimeController < ActionController::Base

  def freeze
    date = params[:date]
    Anytime.freeze_at(date[:year].to_i, date[:month].to_i, date[:day].to_i, date[:hour].to_i, date[:minute].to_i, date[:second].to_i)
    redirect_to :back
  end

  def unfreeze
    Anytime.unfreeze!
    redirect_to :back
  end
end
