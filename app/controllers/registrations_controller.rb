class RegistrationsController < Devise::RegistrationsController

  private

    def sign_up_params
      params.require(:usuario).permit(
        :nome,
        :cpf,
        :cep,
        :endereco,
        :numero,
        :bairro,
        :cidade,
        :uf,
        :email,
        :password,
        :password_confirmation
      )
    end

    def account_update_params
      params.require(:usuario).permit(
        :nome,
        :cpf,
        :cep,
        :endereco,
        :numero,
        :bairro,
        :cidade,
        :uf,
        :email,
        :password,
        :current_password
      )
    end
    
end