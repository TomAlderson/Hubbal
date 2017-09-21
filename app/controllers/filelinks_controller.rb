class FilelinksController < ApplicationController
  before_action :set_filelink, only: [:show, :edit, :update, :destroy]

  # GET /filelinks
  # GET /filelinks.json
  def index
    @filelinks = Filelink.all
  end

  # GET /filelinks/1
  # GET /filelinks/1.json
  def show
  end

  # GET /filelinks/new
  def new
    @filelink = Filelink.new
  end

  # GET /filelinks/1/edit
  def edit
  end

  # POST /filelinks
  # POST /filelinks.json
  def create
    @filelink = Filelink.new(filelink_params)

    respond_to do |format|
      if @filelink.save
        format.html { redirect_to @filelink, notice: 'Filelink was successfully created.' }
        format.json { render :show, status: :created, location: @filelink }
      else
        format.html { render :new }
        format.json { render json: @filelink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /filelinks/1
  # PATCH/PUT /filelinks/1.json
  def update
    respond_to do |format|
      if @filelink.update(filelink_params)
        format.html { redirect_to @filelink, notice: 'Filelink was successfully updated.' }
        format.json { render :show, status: :ok, location: @filelink }
      else
        format.html { render :edit }
        format.json { render json: @filelink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /filelinks/1
  # DELETE /filelinks/1.json
  def destroy
    @filelink.destroy
    respond_to do |format|
      format.html { redirect_to filelinks_url, notice: 'Filelink was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filelink
      @filelink = Filelink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def filelink_params
      params.require(:filelink).permit(:content_id, :link, :size, :type)
    end
end
