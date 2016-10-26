class DocumentsController < ApplicationController
  def index
    @document = Document.new
    @documents = Document.all
  end

  def create
    @document = Document.new
    @document.report = params["document"]["report"].first
    @document.save
    redirect_to documents_path
  end

  def download
    document = Document.find params[:id]
    send_file document.report.current_path
  end
end
