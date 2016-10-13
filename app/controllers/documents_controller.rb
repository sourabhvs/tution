class DocumentsController < ApplicationController
  def index
    @document = Document.new
    @documents = Document.all
  end

  def create
    @document = Document.new
    @document.report = params["document"]["report"]
    @document.name = params["document"]["report"].first.original_filename
    @document.save
    redirect_to documents_path
  end
end
