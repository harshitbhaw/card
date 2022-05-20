class CreditsController < ApplicationController
# before_action :card_number, only: [:show, :create, :update, :destroy]
    def index
        @credits = current_user.credits.all
    end

    def new
        @credit = Credit.new
    end

    def show
        # card_number = String(card_number).scan(/\d/).join
        # last_four_digits   = card_number.slice!(-4..-1)
        # card_number.tr("0-9", "#") << last_four_digits
        
        @credit = Credit.find(params[:id])
    end

    def create
        @credit = Credit.new(credit_params)
        @credit.save
        redirect_to @credit
    end

    def edit
        @credit = Credit.find(params[:id])
    end

    def update
        @credit = Credit.find(params[:id])
        @credit.update(credit_params)
        redirect_to @credit
    end

    def destroy
        @credit = Credit.find(params[:id])
        @credit.destroy
        redirect_to @credit
    end

    private

    def credit_params
        params.require(:credit).permit(:name, :card_number, :cvc, :start_Date, :end_date, :user_id).merge(user: current_user)
    end
end
