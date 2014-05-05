require 'timecop'
require 'app/controllers/anytime_controller'
require 'config/routes.rb'
require 'generators/install_generator'
require 'app/helpers/anytime_helper'

module Anytime

  mattr_accessor :time_mode

  mattr_accessor :environments

  ActionView::Base.send :include, AnytimeHelper

  def self.freeze_at(year, month, date, hour=0, min=0, sec=0)
    Timecop.travel(year, month, date, hour, min, sec)
  end

  def self.unfreeze!
    Timecop.return
  end

  #def self.is_frozen?
  #  Mocha::Mockery.instance.stubba.stubba_methods.map(&:to_s).eql? ['DateTime.now', 'Time.now', 'Date.today']
  #end

  def self.setup
    yield self
  end

  private

  #def self.utc_offset
  #  case self.time_mode
  #    when :local
  #      ActiveSupport::TimeZone.seconds_to_utc_offset(Time.new.utc_offset)
  #    else
  #      "00:00"
  #  end
  #
  #end
end