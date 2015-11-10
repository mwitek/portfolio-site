class Project < ActiveRecord::Base
  validates :name, :description, presence: true
  scope :all_projects, -> { all.order(:position) }
end
