class TimesController < ApplicationController
  
  def main
    require 'date'
    @date = Time.now.inspect
    # @date.strftime("%d%m%Y %H:%M")
  end
end
