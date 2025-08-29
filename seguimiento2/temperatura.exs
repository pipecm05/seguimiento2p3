defmodule ConversionTemperatura do
  def main do
    # 1. Pedir nombre del usuario
    nombre = UtilTest.input("Ingrese su nombre:", :string)

    # 2. Pedir temperatura en Celsius
    celsius = UtilTest.input("Ingrese la temperatura en °C:", :float)

    # 3. Conversiones
    fahrenheit = (celsius * 9 / 5) + 32
    kelvin = celsius + 273.15

    # 4. Mostrar resultados con 1 decimal
    mensaje =
      "#{nombre}, la temperatura es:\n" <>
      "- #{Float.round(fahrenheit, 1)} °F\n" <>
      "- #{Float.round(kelvin, 1)} K"

    UtilTest.show_message(mensaje)
  end
end

# Ejecutar el programa
ConversionTemperatura.main()
