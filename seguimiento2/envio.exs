defmodule Envio do
  def calcular_envio do
    cliente = UtilTest.input("Ingrese el nombre del cliente:", :string)
    peso = UtilTest.input("Ingrese el peso del paquete en kg:", :float)
    tipo_envio = UtilTest.input("Ingrese el tipo de envío (Económico, Express, Internacional):", :string)

    # Cálculo usando cond y case
    costo_total =
      cond do
        tipo_envio == "Económico" ->
          trunc(peso * 5000)

        tipo_envio == "Express" ->
          trunc(peso * 8000)

        tipo_envio == "Internacional" and peso <= 5 ->
          trunc(peso * 15000)

        tipo_envio == "Internacional" and peso > 5 ->
          trunc(peso * 12000)

        true ->
          0
      end

    UtilTest.show_message(
      "Cliente: #{cliente}\n" <>
      "Peso: #{peso} kg\n" <>
      "Tipo de envío: #{tipo_envio}\n" <>
      "Costo total: $#{costo_total}"
    )

    {cliente, peso, tipo_envio, costo_total}
  end
end
#para ejecutar automáticamente
Envio.calcular_envio()
