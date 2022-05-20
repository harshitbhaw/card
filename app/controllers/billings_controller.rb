class BillingsController < ApplicationController

    def index
        @credit = Credit.find_by(params[:id])
        @billings = Billing.all
    end

    def new
        @credit = Credit.find_by(params[:id])
        @billing = @credit.billings.new
    end

    def show
        @credit = Credit.find_by(params[:id])
        @billing = @credit.billings.find(params[:id])
    end

    def edit
    end

    def create
        byebug
        @credit = Credit.find_by(params[:id])
        @billing = @credit.billings.build(billing_params)
        @billing.save
        redirect_to root_path
    end

    def update
    end

    def destroy
    end

    private
        def billing_params
            params.require(:billing).permit(:card_number, :cvc, :postal_code, :valid_thru, :total_amount, :amount_paid, :due_amount)
        end

end
