class UploadController < ApplicationController
  def index
     
  end

  def upload_path
  	render :file => 'app/views/upload/uploadfile.rhtml'
  end

  def uploadFile
    post = DataFile.save(params[:upload])
    flash[:notice] = "File has been uploaded successfully"
    redirect_to :action => :index
  end

  def showfile
  		@sfile = Dir["public/data/*.*"]
  end

  def downloadfile
  		send_file "#{Rails.root}/#{params[:id]}.#{params[:format]}"
  end

end
