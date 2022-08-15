require 'swagger_helper'

describe 'Companies API', type: :request do

  path '/companies/sign_in' do
    post 'Sign in as a Company' do
      tags 'Sessions'
      produces 'application/json'
      consumes 'application/json'
      parameter name: :company, in: :body, schema: {
        type: :object,
        properties: {
          company: {
            type: :object,
            properties: {
              email: { type: :string },
              password: { type: :string }
            }
          }
        }
      }
      response '200', 'Logged in' do
        run_test!
      end
    end
  end

  path '/companies/sign_out' do
    delete 'Sign out a Company' do
      tags 'Sessions'
      produces 'application/json'
      consumes 'application/json'

      response '200', 'Signed out' do
        run_test!
      end
    end
  end
end
