class SignPagesController < ApplicationController
  before_action :set_sign_page, only: [:show, :edit, :update, :destroy]

  # GET /sign_pages
  # GET /sign_pages.json
  def index
    @sign_pages = SignPage.all
  end

  # GET /sign_pages/1
  # GET /sign_pages/1.json
  def show
  end

  # GET /sign_pages/new
  def new
    @sign_page = SignPage.new
  end

  # GET /sign_pages/1/edit
  def edit
  end

  # POST /sign_pages
  # POST /sign_pages.json
  def create
    @sign_page = SignPage.new(sign_page_params)

    respond_to do |format|
      if @sign_page.save
        format.html { redirect_to @sign_page, notice: 'Sign page was successfully created.' }
        format.json { render :show, status: :created, location: @sign_page }
      else
        format.html { render :new }
        format.json { render json: @sign_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sign_pages/1
  # PATCH/PUT /sign_pages/1.json
  def update
    respond_to do |format|
      if @sign_page.update(sign_page_params)
        format.html { redirect_to @sign_page, notice: 'Sign page was successfully updated.' }
        format.json { render :show, status: :ok, location: @sign_page }
      else
        format.html { render :edit }
        format.json { render json: @sign_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sign_pages/1
  # DELETE /sign_pages/1.json
  def destroy
    @sign_page.destroy
    respond_to do |format|
      format.html { redirect_to sign_pages_url, notice: 'Sign page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sign_page
      @sign_page = SignPage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sign_page_params
      params.require(:sign_page).permit(:name)
    end
end
