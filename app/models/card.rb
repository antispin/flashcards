class Card < ActiveRecord::Base

  validates :original_text,   presence: true, length: { minimum: 5 }
  validates :translated_text, presence: true, length: { minimum: 5 }


end