class OrganizationsController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]
  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(org_params)
    if @organization.save
      puts "successful"
    else
      puts "unsuccessful"
    end

  end

  def edit
  end

  def update
  end

  def index
  end

  def destroy
  end

  def show
    @organization = Organization.find(params[:id])
  end
  private
  def org_params
    params.require(:organization).permit(:name, :email, :website_url, :description)
  end
end
