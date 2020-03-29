# frozen_string_literal: true

module Mutations
  class SignIn < Mutations::BaseMutation
    argument :email, String, required: true
    argument :password, String, required: true
    argument :client_id, String, required: true

    field :access_token, String, null: true
    field :refresh_token, String, null: true

    def resolve(email:, password:, client_id:)
      user = User.authenticate(email, password)
      application = Doorkeeper::Application.find_by(uid: client_id)
      return {} unless user && application

      token = Doorkeeper::AccessToken.create(
        resource_owner_id: user.id,
        application_id: application.id,
        expires_in: 3600,
        scopes: application.scopes
      )

      {
        access_token: token.token,
        refresh_token: token.refresh_token
      }
    end
  end
end
