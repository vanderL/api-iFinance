class BankController < ApplicationController

    def index
        @bank = Bank.all

        respond_to do |format|
            format.json { render json: @bank }
        end

    end


    def create
        @bank = Bank.create(bank_params)

        respond_to do |format|
            format.json { render json: @bank }
        end
    end

    def update
        @bank = Bank.find(params[:id])
        @bank.update(bank_params)
            respond_to do |format|
                format.json { render json: @bank }
    end


    def destroy
        @bank = Bank.find(params[:id])
        @bank.destroy

        respond_to do |format|
           # format.json { render json: @bank }
           format.json { head :no_content }
       end
     end


private

  def bank_params
    params.require(:bank).permit(:title, :code)

  end

end
