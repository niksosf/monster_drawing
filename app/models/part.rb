class Part
  include Mongoid::Document
  field :name
  field :img #encode64 rep of the img in raw text

  validates :name, inclusion: { in: [ "head", "torso", "legs", "feet" ] }
end
