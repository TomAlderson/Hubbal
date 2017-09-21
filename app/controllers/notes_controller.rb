class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]
  skip_before_filter  :verify_authenticity_token


  # GET /notes
  # GET /notes.json
  def index
    @notes = Note.all
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
  end

  # GET /notes/1/edit
  def edit
    @note = Note.find_by(id: params[:id])
    render :layout => 'modal'
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(note_params)

    respond_to do |format|
      if @note.save
        format.html { render status: 200 }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    respond_to do |format|
      session[:return_to] ||= request.referer
      if @note.update(note_params)
        format.html { redirect_to session.delete(:return_to), notice: 'Note updated successfully.' }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
    session[:return_to] ||= request.referer
    respond_to do |format|
      format.html { redirect_to session.delete(:return_to), notice: 'Note deleted successfully.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.permit(:user_id, :title, :preview)
    end
end
