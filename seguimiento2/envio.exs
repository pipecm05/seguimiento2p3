defmodule Envio do
  def calcular_envio do
    cliente = UtilTest.input("Ingrese el nombre del cliente:", :string)
    peso = UtilTest.input("Ingrese el peso del paquete en kg:", :float)
    tipo_envio = UtilTest.input("Ingrese el tipo de envío (Economico, Express, Internacional):", :string)

    # Cálculo usando cond y case
    costo_total =
      cond do
        tipo_envio == "Economico" ->
          peso * 5000

        tipo_envio == "Express" ->
          peso * 8000

        tipo_envio == "Internacional" ->
          case peso do
            p when p <= 5 -> p * 15000
            p when p > 5 -> p * 12000
          end

        true ->
          0
      end

    # Resultado en tupla
    resultado = {cliente, peso, tipo_envio, costo_total}

    # Mostrar mensaje
    mensaje =
      "Cliente: #{cliente}\n" <>
      "Peso: #{peso} kg\n" <>
      "Tipo de envío: #{tipo_envio}\n" <>
      "Costo total: $#{Float.round(costo_total, 2)}"

    Util.show_message(mensaje)
    IO.puts(mensaje)

    resultado
  end
end

# Para ejecutar automáticamente
Envio.calcular_envio()
