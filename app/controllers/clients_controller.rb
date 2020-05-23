class ClientsController < ApplicationController
    before_action :find_client, only: [:show, :update, :edit, :destroy]

    def show 
    end

    def new
        @client = Client.new
    end

    def create  
        @client = Client.create(client_params)
        redirect_to @client
    end

    def update
        @client.update(client_params)
        redirect_to @client
    end

    def edit
    end

    def destroy
        @client.destroy
        redirect_to new_client_path
    end

    private

    def find_client
        @client = Client.find(params[:id])
    end

    def client_params
        params.require(:client).permit(:name, :workout_plan_id, :personal_trainer_id)
    end
end
