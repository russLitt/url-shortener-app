class UrlListsController < ApplicationController
  before_action :set_url_list, only: [:show, :edit, :update, :destroy]

  # GET /url_lists
  # GET /url_lists.json
  def index
    @url_lists = UrlList.all
  end

  # GET /url_lists/1
  # GET /url_lists/1.json
  def show
  end

  # GET /url_lists/new
  def new
    @url_list = UrlList.new
  end

  # GET /url_lists/1/edit
  def edit
  end

  # POST /url_lists
  # POST /url_lists.json
  def create
    @url_list = UrlList.new(url_list_params)

    respond_to do |format|
      if @url_list.save
        format.html { redirect_to @url_list, notice: 'Url list was successfully created.' }
        format.json { render :show, status: :created, location: @url_list }
      else
        format.html { render :new }
        format.json { render json: @url_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /url_lists/1
  # PATCH/PUT /url_lists/1.json
  def update
    respond_to do |format|
      if @url_list.update(url_list_params)
        format.html { redirect_to @url_list, notice: 'Url list was successfully updated.' }
        format.json { render :show, status: :ok, location: @url_list }
      else
        format.html { render :edit }
        format.json { render json: @url_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /url_lists/1
  # DELETE /url_lists/1.json
  def destroy
    @url_list.destroy
    respond_to do |format|
      format.html { redirect_to url_lists_url, notice: 'Url list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_url_list
      @url_list = UrlList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def url_list_params
      params.require(:url_list).permit(:full_url, :short_url)
    end
end
