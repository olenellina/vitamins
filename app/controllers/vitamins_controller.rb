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
    # Unavailable vitamins are those that are still in research and not
    # yet available for purchase
    @myvitamin = Vitamin.new
    @myvitamin.user_id = @user.id.to_i
    @myvitamin.name = params[:vitamin][:name]
    @myvitamin.dosage = params[:vitamin][:dosage]
    @myvitamin.cost = params[:vitamin][:cost]
    @myvitamin.retailer = params[:vitamin][:retailer]
    @myvitamin.photo = params[:vitamin][:photo]
    @myvitamin.observations = params[:vitamin][:observations]
    @myvitamin.notes = params[:vitamin][:notes]
    @myvitamin.required = params[:vitamin][:required]
    @myvitamin.active = params[:vitamin][:active]
    @myvitamin.unavailable = params[:vitamin][:unavailable]
    @myvitamin.general = params[:vitamin][:general]
    @myvitamin.antioxidant = params[:vitamin][:antioxidant]
    @myvitamin.skin = params[:vitamin][:skin]
    @myvitamin.longevity = params[:vitamin][:longevity]
    @myvitamin.digestive = params[:vitamin][:digestive]
    @myvitamin.mood = params[:vitamin][:mood]
    @myvitamin.sleeping = params[:vitamin][:sleeping]
    @myvitamin.cellrepair = params[:vitamin][:cellrepair]
    @myvitamin.energy = params[:vitamin][:energy]
    @myvitamin.alertness = params[:vitamin][:alertness]
    @myvitamin.bones = params[:vitamin][:bones]
    @myvitamin.eyes = params[:vitamin][:eyes]
    @myvitamin.save

    return redirect_to action: 'index'
  end

  def update
    @myvitamin.name = params[:vitamin][:name]
    @myvitamin.dosage = params[:vitamin][:dosage]
    @myvitamin.cost = params[:vitamin][:cost]
    @myvitamin.retailer = params[:vitamin][:retailer]
    @myvitamin.photo = params[:vitamin][:photo]
    @myvitamin.observations = params[:vitamin][:observations]
    @myvitamin.notes = params[:vitamin][:notes]
    @myvitamin.required = params[:vitamin][:required]
    @myvitamin.active = params[:vitamin][:active]
    @myvitamin.unavailable = params[:vitamin][:unavailable]
    @myvitamin.general = params[:vitamin][:general]
    @myvitamin.antioxidant = params[:vitamin][:antioxidant]
    @myvitamin.skin = params[:vitamin][:skin]
    @myvitamin.longevity = params[:vitamin][:longevity]
    @myvitamin.digestive = params[:vitamin][:digestive]
    @myvitamin.mood = params[:vitamin][:mood]
    @myvitamin.sleeping = params[:vitamin][:sleeping]
    @myvitamin.cellrepair = params[:vitamin][:cellrepair]
    @myvitamin.energy = params[:vitamin][:energy]
    @myvitamin.alertness = params[:vitamin][:alertness]
    @myvitamin.bones = params[:vitamin][:bones]
    @myvitamin.eyes = params[:vitamin][:eyes]
    @myvitamin.save

    redirect_to action: 'show'
  end

  def edit
  end

  def destroy
    Vitamin.find(params[:id]).destroy
    redirect_to action: 'index'
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
