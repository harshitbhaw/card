class DebitsController < ApplicationController

    def index
        @debits = current_user.debits.all
    end

    def new
        @debit = Debit.new
    end

    def show
        @debit = Debit.find(params[:id])
    end

    def create
        @debit = Debit.new(debit_params)
       if @debit.save
        redirect_to @debit

       else
        "error"
       end
    end

    def edit
        @debit = Debit.find(params[:id])
    end

    def update
        @debit = Debit.find(params[:id])
        @debit.update(debit_params)
        redirect_to @debit
    end

    def destroy
        @debit = Debit.find(params[:id])
        @debit.destroy
        redirect_to @debit
    end

    private

    def debit_params
        params.require(:debit).permit(:name, :card_number, :cvc, :valid_from, :valid_thru, :user_id).merge(user: current_user)
    end
end
