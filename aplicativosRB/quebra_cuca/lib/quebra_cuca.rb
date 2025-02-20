module QuebraCuca
  def self.soma(a, b)
    a + b
  end

  def self.subtrai(a, b)
    a - b
  end

  def self.multiplica(a, b)  
    a * b
  end

  def self.divide(a, b)
    raise ZeroDivisionError, "Não é possível dividir por zero!" if b == 0
    a / b
  end
end
