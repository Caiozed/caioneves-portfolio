class Project < ActiveRecord::Base
    default_scope {order(:name)}
    validates :name, :description, :image, :git_url, presence: true
    mount_uploader :image, ImageUploader 
end
