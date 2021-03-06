class Event < ApplicationRecord

  validates :title, presence: {message: "Merci d'indiquer le titre de l'actualité."}, length: {minimum: 2, message: "Le titre doit faire plus de 2 caractères."}
  validates :description, presence: {message: "Merci d'indiquer la description de l'actualité."}, length: {maximum: 200, message: "La description doit faire moins de 200 caractères maximum."}
  validates :content, presence: {message: "Merci d'indiquer le contenu de l'actualité."}

  belongs_to :admin

end
