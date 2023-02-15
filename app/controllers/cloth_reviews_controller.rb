class ClothReviewsController < ApplicationController
  before_action :set_cloth_review, only: %i[ show edit update destroy ]

  # GET /cloth_reviews or /cloth_reviews.json
  def index
    @cloth_reviews = ClothReview.all
  end

  # GET /cloth_reviews/1 or /cloth_reviews/1.json
  def show
    @cloth_review.user_id = current_user.id
  end

  # GET /cloth_reviews/new
  def new
    @cloth_review = ClothReview.new
  end

  # GET /cloth_reviews/1/edit
  def edit
  end

  # POST /cloth_reviews or /cloth_reviews.json
  def create
    @cloth_review = ClothReview.new(cloth_review_params)

    respond_to do |format|
      if @cloth_review.save
        url = "/cloths/" + @cloth_review.cloth_id.to_s
        format.html { redirect_to url, notice: 'Cloth review was successfully created.' }
        format.json { render :show, status: :created, location: @cloth_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cloth_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cloth_reviews/1 or /cloth_reviews/1.json
  def update
    respond_to do |format|
      if @cloth_review.update(cloth_review_params)
        format.html { redirect_to cloth_review_url(@cloth_review), notice: "Cloth review was successfully updated." }
        format.json { render :show, status: :ok, location: @cloth_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cloth_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cloth_reviews/1 or /cloth_reviews/1.json
  def destroy
    @cloth_review.destroy

    respond_to do |format|
      format.html { redirect_to cloth_reviews_url, notice: "Cloth review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cloth_review
      @cloth_review = ClothReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cloth_review_params
      params.require(:cloth_review).permit(:user_id, :cloth_id, :review)
    end
end
