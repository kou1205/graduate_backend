module Api
    module V1
      class UsersController < ApplicationController
        def index
          users = User.all
          render json: users
        end
  
        def by_year
          users = User.where(graduation_year: params[:year])
          render json: users
        end
  
        def by_company
          users = User.where(company_name: params[:company])
          render json: users
        end
  
        def create
          user = User.new(user_params)
          if user.save
            render json: user, status: :created
          else
            render json: { errors: user.errors }, status: :unprocessable_entity
          end
        end
  
        private
  
        def user_params
          params.permit(:name, :graduation_year, :company_name)
        end
      end
    end
  end
