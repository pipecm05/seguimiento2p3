defmodule CalculoSalario do
  def main do
    # 1. Pedir nombre del empleado
    nombre = UtilTest.input("Ingrese el nombre del empleado:", :string)

    # 2. Ingresar salario base
    salario_base = UtilTest.input("Ingrese el salario base:", :float)

    # 3. Ingresar horas extras trabajadas
    horas_extras = UtilTest.input("Ingrese las horas extras trabajadas:", :integer)

    # 4. Calcular valor de una hora normal
    #    Suponiendo jornada mensual de 240 horas (8h * 30 días)
    valor_hora = salario_base / 240

    # 5. Calcular valor total de horas extra (1.5x)
    pago_horas_extras = horas_extras * valor_hora * 1.5

    # 6. Salario total
    salario_total = salario_base + pago_horas_extras

    # 7. Mostrar resultados
    mensaje =
      "El salario total de #{nombre} es de $" <>
      "#{Float.round(salario_total, 2)}."

    UtilTest.show_message(mensaje)
  end
end

# Ejecutar el programa
CalculoSalario.main()
