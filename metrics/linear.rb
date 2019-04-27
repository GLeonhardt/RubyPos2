class LinearMetric
  CONVERTIONS = [:cm, :m, :km, :inch, :foot, :yard, :mile]

  def initialize(value, unit)
    @unit = unit.to_sym
   raise "Unknown unit" unless CONVERTIONS.include? @unit
    @value = value * 1.0
  end

  def to_cm
    case @unit
    when :cm
      @value
    when :m
      @value * 100.0
    when :km
      @value * 100000.0
    when :inch
      @value * 2.54
    when :foot

        @value * 30.48
    when :yard
      @value * 91.44
    when :mile
      @value * 160_000.0
    else
      @value
    end
  end

  convertions_scales = { cm: 1.0, m: 100.0, km: 100000.0,
    inch: 2.54, foot: 30.48, yard: 91.44, mile: 160_000 }

  CONVERTIONS.each do |conversion|
    next if conversion == :cm
    define_method("to_#{conversion}") do
      to_cm / convertions_scales[conversion]
    end
  end
end
