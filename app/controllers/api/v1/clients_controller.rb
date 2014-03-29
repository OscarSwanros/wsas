module Api
  module V1
    class ClientsController < ApplicationController # Api::BaseController
      before_filter :authenticate_user!, except: [ :index, :show ]
      respond_to :json

      def index
        respond_to do |format|
          format.html { render text: Client.all.to_json }
          format.json { render text: Client.all.to_json }
        end
      end

      def show
        respond_to do |format|
          format.html { render text: Client.find(params[:id]).to_json }
          format.json { render text: Client.find(params[:id]).to_json }
        end
      end
    end
  end
end
