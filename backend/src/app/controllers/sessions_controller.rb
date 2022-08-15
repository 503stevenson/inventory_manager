class SessionsController < Devise::SessionsController

  def create
    self.resource = warden.authenticate!(auth_options)
    sign_in(resource_name, resource)
    yield resource if block_given?
    @company = resource
    render 'companies/show'
  end

  def destroy
    (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    yield if block_given?
    head :ok
  end
end
