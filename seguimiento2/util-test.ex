defmodule UtilTest do
  # Entrada de texto con JOptionPane
  def input(message, :string) do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", message])
    |> elem(0)
    |> String.trim()
  end

  # Entrada de números decimales (float) con manejo de errores
  def input(message, :float) do
    valor = input(message, :string)

    try do
      String.to_float(valor)
    rescue
      ArgumentError ->
        show_message(" Error: '#{valor}' no es un número decimal válido. Intente de nuevo.")
        input(message, :float) # vuelve a pedir
    end
  end

  # Entrada de números enteros con manejo de errores
  def input(message, :integer) do
    valor = input(message, :string)

    try do
      String.to_integer(valor)
    rescue
      ArgumentError ->
        show_message(" Error: '#{valor}' no es un número entero válido. Intente de nuevo.")
        input(message, :integer) # vuelve a pedir
    end
  end

  # Mostrar mensaje con JOptionPane
  def show_message(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
    :ok
  end

  # FUNCIONES ESPECÍFICAS PEJAJE

  def registrar_peaje() do
    placa = input("Ingrese la placa del vehículo:", :string)
    tipo = input("Ingrese el tipo de vehículo (Carro, Moto, Camión):", :string)
    peso = input("Ingrese el peso del vehículo en toneladas:", :float)

    tarifa =
      case String.downcase(tipo) do
        "carro" -> 10000
        "moto" -> 5000
        "camión" -> 20000 + trunc((peso - 1) * 2000)
        "camion" -> 20000 + trunc((peso - 1) * 2000) # sin tilde
        _ -> 0
      end

    IO.puts("Vehículo #{placa} (#{tipo}) debe pagar $#{tarifa}")

    {placa, tipo, tarifa}
  end
end
