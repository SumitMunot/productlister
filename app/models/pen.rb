class Pen < Product
  validates :colour, inclusion: { in: %w(blue red yellow black), message: "Allowed colours blue, red, yellow, black colors only" }

  def self.type
    "Pen"
  end

  def pen?
    true
  end
end
