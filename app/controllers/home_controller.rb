class HomeController < ApplicationController
  def show
    @projects = Project.all.map { |p| ProjectPresenter.new(p) }
  end
end
