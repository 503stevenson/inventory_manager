require 'swagger_helper'

RSpec.describe 'Company API', type: :request do
  path '/companies' do
    get 'All companies' do
      tags 'Companies'
      produces 'application/json'
      consumes 'application/json'

      response '200', 'list of Companies' do
        run_test!
      end
    end
  end
end
