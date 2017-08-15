module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    flash.clear
    if current_tourguide
      return
    elsif current_tourist
      return
    end
  end
end
