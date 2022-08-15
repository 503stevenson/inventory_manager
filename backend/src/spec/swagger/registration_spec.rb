require 'swagger_helper'

describe 'Companies API', type: :request do

  path '/companies' do
    post 'Register a new company' do
      tags 'Companies'
      produces 'application/json'
      consumes 'application/json'
      parameter name: :name, in: :query, type: :string
      parameter name: :phone_number, in: :query, type: :string
      parameter name: :email, in: :query, type: :string
      parameter name: :password, in: :query, type: :string
      parameter name: :password_confirmation, in: :query, type: :string

      response '200', 'Company created' do
        run_test!
      end
    end

    delete 'Destroy an existing company' do
      tags 'Companies'
      produces 'application/json'
      consumes 'application/json'

      response '200', 'Company deleted' do
        run_test!
      end
    end
  end
end
