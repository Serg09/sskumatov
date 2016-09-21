class SecretController < ApplicationController
  def index
    before_action :authenticate_user!, only: [:secret]
  end
end
