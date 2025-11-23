require 'swagger_helper'

RSpec.describe "Users", type: :request do
  path '/users' do
    get 'returns a list of users' do
      tags 'Users'
      produces 'application/json'
      response '200', 'list of users' do
        schema type: :array,
          items: {
            type: :object,
            properties: {
              id: { type: :integer },
              name: { type: :string },
              email: { type: :string }
            }
          }
        run_test!
      end
    end
  end
end
