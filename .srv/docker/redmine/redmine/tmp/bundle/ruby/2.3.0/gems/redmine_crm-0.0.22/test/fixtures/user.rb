class User < ActiveRecord::Base
  has_many :issues

  def anonymous?
    false
  end
end