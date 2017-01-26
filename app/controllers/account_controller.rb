class AccountController < ApplicationController

  def index
      @accounts = Account.all

      respond_to do |format|
          format.json { render json: @accounts }
      end

  end




  def create
      @accounts = Account.create(account_params)

      respond_to do |format|
          format.json { render json: @accounts }
      end
  end

private

def account_params
  params.require(:account)
        .permit(:title, :agency, :account_number, :balance, :balance_initial, :bank_id,)

end

end
