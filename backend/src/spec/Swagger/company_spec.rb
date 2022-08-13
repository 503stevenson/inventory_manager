require 'swagger_helper'

RSpec.describe 'Company API', type: :request do
  path '/companies' do
    post 'creates a company' do
      tags 'Companies'
      produces 'application/json'
      consumes 'application/json'
      parameter name: :name, in: :query, type: :string
      parameter name: :email, in: :query, type: :string
      parameter name: :phone_number, in: :query, type: :string

      response '200', 'Company created' do
        run_test!
      end
    end
  end
end
