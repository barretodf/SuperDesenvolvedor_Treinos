require_relative '../lib/quebra_cuca'
require 'minitest/autorun'

class TestQuebraCuca < Minitest::Test
  def test_soma
    resultado = QuebraCuca.soma(5, 3)
    assert_equal 8, resultado
  end

  def test_subtracao
    resultado = QuebraCuca.subtrai(10, 4)
    assert_equal 6, resultado
  end

  def test_multiplicacao
    resultado = QuebraCuca.multiplica(2, 6)  # Aqui também deve estar "multiplica"
    assert_equal 12, resultado
  end
  
  def test_divisao
    resultado = QuebraCuca.divide(8, 2)
    assert_equal 4, resultado
  end

  def test_divisao_por_zero
    assert_raises(ZeroDivisionError) do 
        QuebraCuca.divide(5, 0)
    end
end
end
