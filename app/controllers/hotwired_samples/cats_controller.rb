class HotwiredSamples::CatsController < HotwiredSamples::ApplicationController
  include Pagy::Backend
  before_action :set_cat, only: %i[ edit update destroy ]

  # GET /hotwired_samples/cats
  def index
    @pagy, @cats = pagy(Cat.all)
  end

  # GET /hotwired_samples/cats/new
  def new
    @cat = Cat.new
  end

  # GET /hotwired_samples/cats/1/edit
  def edit
  end

  # POST /hotwired_samples/cats
  def create
    @cat = Cat.new(cat_params)

    if @cat.save
      redirect_to hotwired_samples_cats_path, notice: "Cat was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hotwired_samples/cats/1
  def update
    if @cat.update(cat_params)
      redirect_to hotwired_samples_cats_path, notice: "Cat was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /hotwired_samples/cats/1
  def destroy
    @cat.destroy
    redirect_to hotwired_samples_cats_path, notice: "Cat was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat
      @cat = Cat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cat_params
      params.require(:cat).permit(:name, :age)
    end
end
