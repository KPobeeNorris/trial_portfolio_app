class Portfolio < ApplicationRecord

  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.javascript
    where(subtitle: "Javascript")
  end

  scope :ruby_on_rails_portfolio, -> {where(subtitle: "Ruby on Rails")}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://via.placeholder.com/550x250"
    self.thumb_image ||= "http://via.placeholder.com/350x150"
  end

end
