class Inquiry < ActiveRecord::Base
  validates :email, :body, presence: true
  validates :email, email: true
end
