require_relative '../test_helper'
require_relative '../../metrics/linear'

class LinearMetricTest < Minitest::Test
    def test_get_cm_to_m
        linear = LinearMetric.new(10, "cm")
        resposta = linear.to_m
        assert_equal 0.1, resposta
    end

    def test_get_cm_to_km
        linear = LinearMetric.new(100000, "cm")
        resposta = linear.to_km
        assert_equal 1, resposta
    end

    def test_get_m_to_cm
        linear = LinearMetric.new(1, "m")
        resposta = linear.to_cm
        assert_equal 100, resposta
    end

    def test_get_km_to_cm
        linear = LinearMetric.new(1, "km")
        resposta = linear.to_cm
        assert_equal 100000, resposta
    end
end