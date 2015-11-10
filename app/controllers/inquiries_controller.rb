class InquiriesController < ApplicationController
  def create
    @inquiry = Inquiry.new(inquiry_params)
    respond_to do |format|
      if @inquiry.save
        ContactMailer.contact(@inquiry).deliver_now
        format.json { render json: @inquiry, status: :created, location: @inquiry }
      else
        format.json { render json: @inquiry.errors.full_messages.to_sentence, status: :unprocessable_entity }
      end
    end
  end

  def inquiry_params
    params.require(:inquiry).permit(:email, :body)
  end
end
