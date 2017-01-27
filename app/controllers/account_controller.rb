class AccountController < ApplicationController

  def index
      @account = Account.all

      respond_to do |format|
          format.json { render json: @account }
      end

  end




  def create
      @account = Account.create(account_params)

      respond_to do |format|
          format.json { render json: @account }
      end
  end


  def update
      @account = Account.find(params[:id])
      @account.update(account_params)
      respond_to do |format|
          format.json { render json: @account }
      end
  end


  def destroy
      @account = Account.find(params[:id])
      @account.destroy

      respond_to do |format|
         # format.json { render json: @account }
         format.json { head :no_content }
     end
   end


private

  def account_params
    params.require(:account)
          .permit(:title, :agency, :account_number, :balance, :balance_initial, :bank_id,)

  end

end
