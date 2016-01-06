class StaticPagesController < ApplicationController
  def home
    @fes=Festival.all
  end
end
