class RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_user!, only: [:destroy]

  def sign_up_params
    params.permit(:name, :email, :phone_number, :password, :password_confirmation)
  end

  def create
    build_resource(sign_up_params)

    resource.save
    yield resource if block_given?
    if resource.persisted?
      if resource.active_for_authentication?
        sign_up(resource_name, resource)
      else
        expire_data_after_sign_in!
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
    end
    @company = resource
    render 'companies/show'
  end

  def destroy
    resource.destroy
    Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name)
    yield resource if block_given?
    head :ok
  end
end
