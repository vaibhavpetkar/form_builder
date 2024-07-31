class FormsController < ApplicationController
  before_action :find_form, only: [:show, :edit, :update, :destroy]

  def index
    @forms = Form.all
  end

  def show
  end

  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      redirect_to @form, notice: 'Form was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @form.update(form_params)
      redirect_to @form, notice: 'Form was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @form.destroy
    redirect_to forms_path, notice: 'Form was successfully destroyed.'
  end

  private

  def find_form
    @form = Form.find(params[:id])
  end

  def form_params
    params.require(:form).permit(:name, :structure)
  end
end
