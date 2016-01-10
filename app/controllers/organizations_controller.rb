class OrganizationsController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]
  before_action :get_organization, only: [:show]

  # Organization actions will become relevant if we allow a user to create organizations

  # def new
  #   @organization = Organization.new
  # end

  # def create
  #   @organization = Organization.new(org_params)
  #   if @organization.save
  #     OrganizationMailer.welcome_email(@organization).deliver_later
  #     puts "successful"
  #   else
  #     puts "unsuccessful"
  #   end
  # end

  def edit
  end

  def update
  end

  def index
  end

  def destroy
  end

  def show
  end

  private

  def get_organization
    @organization = Organization.find(params[:id])
  end

  def org_params
    params.require(:organization).permit(:name, :email, :website_url, :description)
  end

end
