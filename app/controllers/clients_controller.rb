class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  require 'bootstrap-datepicker-rails'

  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.search(params[:search]).paginate(:per_page => 25, :page => params[:page])
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Client was successfully created.' }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: 'Client was successfully updated.' }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: 'Client was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def email
    @clients = Client.find(params[:client_ids])
    @email = Email.new


  end

  def submit
    @clients = Client.find(params[:client_ids])
    @email = Email.create(email_params)
    @email.client_ids = params[:client_ids]
    email = Email.last
    @clients.each do |client|
    ClientMailer.engagement_email(client, email).deliver
    end
      redirect_to @email
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.require(:client).permit(:first_name, :last_name, :email_address, :last_visit, :class_type, :studio_id)
    end
    def email_params
      params.require(:email).permit(:email_name, :subject, :from_name, :from_email, :body)
    end
  end
