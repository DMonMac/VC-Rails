class StaticPagesController < ApplicationController
  def home
    @homes = Home.all
  end
end
