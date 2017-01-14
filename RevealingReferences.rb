class RevealingReferences
  attr_reader :wheels

  def initialize(data)
    @wheels = wheelify(data)
  end

  def diameters
    # 0はリム、1はタイヤ
    wheels.map { |wheel| wheel.rim + (wheel.tire * 2) }
  end

  private

  Wheel = Struct.new(:rim, :tire)
  def wheelify(data)
    data.map { |cell| Wheel.new(cell[0], cell[1]) }
  end
end

data = [[622, 20], [622, 23], [559, 30], [559, 40]]
revealing_references = RevealingReferences.new(data)

p revealing_references.diameters #=> [662, 668, 619, 639]
