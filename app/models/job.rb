class Job < ActiveRecord::Base
    default_scope {order(:start_date)}
    validates :name, :description, :start_date, :end_date, presence: true
end
