class ProjectPresenter < SimpleDelegator
  def image_url
    "portfolio-images/#{name.underscore.gsub(/\s+/, "")}.jpg"
  end
end