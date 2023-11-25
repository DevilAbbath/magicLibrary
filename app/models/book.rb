class Book < ApplicationRecord
  belongs_to :state
  has_many :loans, dependent: :destroy

  validates_uniqueness_of :title, scope: :author, message: "Book already registered"

  # Método para actualizar el estado del libro a 'arrendado'
  def mark_as_arrendado
    update(state_id: 2) # Cambiar el valor según sea necesario
  end

  def mark_as_disponible
    update(state_id: 1) # Cambiar el valor según sea necesario
  end
end
