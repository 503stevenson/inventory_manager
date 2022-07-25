class Product < ApplicationRecord

  belongs_to :company, class_name: "Company"
end
