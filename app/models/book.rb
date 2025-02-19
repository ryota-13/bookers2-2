class Book < ApplicationRecord
    has_one_attached :image
    belongs_to :user

    validates :title, presence: { message: "Title can't be blank"}
    validates :body, presence: { message: "Body can't be blank" }, length: { maximum: 200, message: "Body is too long (maximum is 200 characters)"}  

end
