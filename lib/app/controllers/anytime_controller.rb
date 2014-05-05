require 'action_controller/base'

class AnytimeController < ActionController::Base

  def freeze
    if date = params[:date]
      if defined?(current_user) and current_user
        user = current_user
        sign_out user
      end

      if defined?(current_admin) and current_admin
        admin = current_admin
        sign_out admin
      end

      Anytime.freeze_at(date[:year].to_i, date[:month].to_i, date[:day].to_i, date[:hour].to_i, date[:minute].to_i, date[:second].to_i)

      sign_in user if defined?(user) and user
      sign_in admin if defined?(admin) and admin
    end

    redirect_to :back
  end

  def unfreeze
    Anytime.unfreeze!
    redirect_to :back
  end
end
