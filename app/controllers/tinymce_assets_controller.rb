class TinymceAssetsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create
  before_action :validate_file_presence

  def create
    blob = ActiveStorage::Blob.create_after_upload!(
      io: params[:file],
      filename: params[:file].original_filename,
      content_type: params[:file].content_type
    )
    render json: { location: url_for(blob) }
  end

  private

  def validate_file_presence
    unless params[:file].present?
      render json: {
        error: {
          message: "No file uploaded."
        }
      }, content_type: "application/json", status: :unprocessable_entity
    end
  end
end
