defmodule ConsumoCombustible do
  def main do
    # Pedir datos al usuario
    nombre = UtilTest.input("Ingrese el nombre del conductor:", :string)
    distancia = UtilTest.input("Ingrese la distancia recorrida en kilómetros:", :float)
    litros = UtilTest.input("Ingrese la cantidad de combustible consumido en litros:", :float)

    # Manejo de excepción si litros es 0
    rendimiento =
      try do
        distancia / litros
      rescue
        ArithmeticError ->
          IO.puts("Error: No se puede dividir por cero. Se considera rendimiento = 0.")
          0.0
      end

    # Mostrar resultados
    mensaje =
      "Conductor: #{nombre}\n" <>
      "Distancia recorrida: #{Float.round(distancia, 2)} km\n" <>
      "Combustible consumido: #{Float.round(litros, 2)} L\n" <>
      "Rendimiento del vehículo: #{Float.round(rendimiento, 2)} km/L"

    UtilTest.show_message(mensaje)
  end
end

# Ejecutar el programa
ConsumoCombustible.main()
