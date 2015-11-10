class HomeController < ApplicationController
  def show
    @projects = Project.all_projects.map { |p| ProjectPresenter.new(p) }
  end
end
