class NamespacesController < ApplicationController
  def index
    @namespaces = Namespace.all
  end

  def show
    @namespace = Namespace.find(params[:id])
  end

  def new
    @namespace = Namespace.new
  end

  def edit
    @namespace = Namespace.find(params[:id])
  end

  def update
    @namespace = Namespace.find(params[:id])
    if @namespace.update(namespace_params)
      redirect_to @namespace, notice: 'Namespace successfully updated!'
    else
      render :edit
    end
  end

  def create
    @namespace = Namespace.new(namespace_params)
    if @namespace.save
      redirect_to @namespace, notice: 'Namespace successfully created!'
    else
      render :new
    end
  end

  def destroy
    @namespace = Namespace.find(params[:id])
    @namespace.destroy

    redirect_to @namespace, alert: 'Namespace successfully deleted!'
  end

  private

  def namespace_params
    params.require(:namespace)
          .permit(:name, :arb, :dept_name, :assyst_svd, :vendor_supported,
                  :owner_email, :technical_owner_email, :support_document,
                  :support_document_uri, :image_file_name)
  end
end
