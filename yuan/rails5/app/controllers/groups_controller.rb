class GroupsController < ApplicationController
  before_action :authenticate_user! , only: [:new, :create]
  def index
    @groups = Group.all
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user

    if @group.save
      redirect_to groups_path
    else
      render :new
    end
  end 
end
