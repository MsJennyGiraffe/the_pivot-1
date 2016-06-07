class Category < ActiveRecord::Base
  attr_accessible :title, :slug
  has_many :socks

  validates_presence_of :slug

  def to_param
    slug
  end
end
