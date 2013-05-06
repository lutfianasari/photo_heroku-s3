class Product < ActiveRecord::Base
  attr_accessible :name, :photo

  has_attached_file :photo,
   :styles => {
   :thumb  => "100x100",
   :medium => "200x200",
   :large => "600x400"
 },
   :storage => :s3,
   :s3_credentials => File.join(Rails.root, 'config', 's3.yml'),
   :path => ":attachment/:id/:style.:extension"
end
