class BankController < ApplicationController

    def index
        @banks = Bank.all

        respond_to do |format|
            format.json { render json: @banks }
        end

    end




    def create
        @banks = Bank.create(bank_params)

        respond_to do |format|
            format.json { render json: @banks }
        end
    end

private

  def bank_params
    params.require(:bank).permit(:title, :code)

  end

end
