class ObscuringReferences
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def diameters
    # 0はリム、1はタイヤ
    data.map { |cell| cell[0] + (cell[1] * 2) }
  end
end

data = [[622, 20], [622, 23], [559, 30], [559, 40]]
obscuring_references = ObscuringReferences.new(data)

p obscuring_references.diameters #=> [662, 668, 619, 639]
