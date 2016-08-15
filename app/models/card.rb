class Card < ActiveRecord::Base
  validates :original_text,   presence: true, length: { minimum: 1 }
  validates :translated_text, presence: true, length: { minimum: 1 }
end
