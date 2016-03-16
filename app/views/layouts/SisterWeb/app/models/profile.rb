class Profile < ActiveRecord::Base
  attr_accessible :name, :school_or_workplace, :technical_expertise, :still_learning
end