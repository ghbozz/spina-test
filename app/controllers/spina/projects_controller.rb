class Spina::ProjectsController < ApplicationController
  def index
    @projects = Spina::Project.newest_first
  end

  def show
    @project = Spina::Project.friendly.find(params[:id])
  end
end
