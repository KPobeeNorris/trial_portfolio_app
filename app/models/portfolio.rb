class Portfolio < ApplicationRecord
include Placeholder
has_many :technologies

  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.javascript
    where(subtitle: "Javascript")
  end

  scope :ruby_on_rails_portfolio, -> {where(subtitle: "Ruby on Rails")}

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height:'550', width: '250')
    self.thumb_image ||= Placeholder.image_generator(height:'350', width: '150')
  end

end
