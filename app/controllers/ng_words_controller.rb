class NgWordsController < ApplicationController
  before_action :set_ng_word, only: [:show, :edit, :update, :destroy]

  # GET /ng_words
  # GET /ng_words.json
  def index
    @ng_words = NgWord.all
  end

  # GET /ng_words/1
  # GET /ng_words/1.json
  def show
  end

  # GET /ng_words/new
  def new
    @ng_word = NgWord.new
  end

  # GET /ng_words/1/edit
  def edit
  end

  # POST /ng_words
  # POST /ng_words.json
  def create
    @ng_word = NgWord.new(ng_word_params)

    respond_to do |format|
      if @ng_word.save
        format.html { redirect_to @ng_word, notice: 'Ng word was successfully created.' }
        format.json { render :show, status: :created, location: @ng_word }
      else
        format.html { render :new }
        format.json { render json: @ng_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ng_words/1
  # PATCH/PUT /ng_words/1.json
  def update
    respond_to do |format|
      if @ng_word.update(ng_word_params)
        format.html { redirect_to @ng_word, notice: 'Ng word was successfully updated.' }
        format.json { render :show, status: :ok, location: @ng_word }
      else
        format.html { render :edit }
        format.json { render json: @ng_word.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ng_words/1
  # DELETE /ng_words/1.json
  def destroy
    @ng_word.destroy
    respond_to do |format|
      format.html { redirect_to ng_words_url, notice: 'Ng word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ng_word
      @ng_word = NgWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ng_word_params
      params.require(:ng_word).permit(:word, :point)
    end
end
