class MembersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @members = Member.all
  end


  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to members_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    @member.update(member_params)
    @member.save
    redirect_to members_path
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy
    redirect_to dashboard_path, status: :see_other
  end

  private

  def member_params
    params.require(:member).permit(:nom, :prenom, :photo, :job, :description)
  end
end
