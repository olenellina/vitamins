class VitaminsController < ApplicationController
  before_action :find_user
  before_action :find_vitamin, only: [:show, :edit, :update, :complete]

  def index
    @vitamins = Vitamin.where("user_id = ?", @user.id).to_a
  end

  def show
  end

  def new
    @myvitamin = Vitamin.new
  end

  def create
    @myvitamin = Vitamin.new
    @myvitamin.user_id = @user.id.to_i
    @myvitamin.name = params[:vitamin][:name]
    @myvitamin.dosage = params[:vitamin][:dosage]
    @myvitamin.cost = params[:vitamin][:cost]
    @myvitamin.photo = params[:vitamin][:photo]
    @myvitamin.observations = params[:vitamin][:observations]
    @myvitamin.notes = params[:vitamin][:name]
    @myvitamin.required = params[:vitamin][:required]
    @myvitamin.active = params[:vitamin][:active]
    # if params[:vitamin][:required] == 1
    #   @myvitamin.required = true
    # else
    #   @myvitamin.required = false
    # end
    # if params[:vitamin][:active] == 1
    #   @myvitamin.active = true
    # else
    #   @myvitamin.active = false
    # end
    @myvitamin.save

    return redirect_to action: 'index'
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def find_vitamin
    @myvitamin = Vitamin.find(params[:id])

    if @myvitamin.user_id != @user.id
      flash[:notice] = "Record not found in this user's account"
      return redirect_to vitamins_index_path
    end

  end

  def find_user
    if session[:user_id] == nil
      flash[:notice] = "You must be logged in to complete that action"
      return redirect_to root_path
    else
      @user = User.find_by(id: session[:user_id].to_i)
    end
  end
end
