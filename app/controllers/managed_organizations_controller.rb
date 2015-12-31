class ManagedOrganizationsController < ApplicationController
  def index
  	@organizations = current_user.managed_organizations
  end
end
