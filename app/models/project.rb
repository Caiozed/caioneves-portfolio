class Project < ActiveRecord::Base
    validates :name, :description, :image, :git_url, presence: true
    mount_uploader :image, ImageUploader 
end
