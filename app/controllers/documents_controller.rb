class DocumentsController < ApplicationController
  def index
    @document = Document.new
    @documents = Document.all
  end

  def create
    @document = Document.new
    @document.report = params["document"]["report"]
    @document.save
    binding.pry
    redirect_to documents_path
  end
end
