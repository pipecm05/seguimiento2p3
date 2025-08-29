defmodule Peaje do
  def registrar_vehiculo do
    placa = UtilTest.input("Ingrese la placa del vehículo:", :string)
    tipo = UtilTest.input("Ingrese el tipo de vehículo (Carro, Moto, Camión):", :string)
    peso = UtilTest.input("Ingrese el peso del vehículo en toneladas:", :float)

    tarifa =
      case String.downcase(tipo) do
        "carro" -> 10000
        "moto" -> 5000
        "camión" -> 20000 + trunc(peso) * 2000
        "camion" -> 20000 + trunc(peso) * 2000
        _ -> 0
      end

    mensaje =
      "Vehículo #{placa} (#{tipo}) debe pagar $#{tarifa}."

    UtilTest.show_message(mensaje)

    {placa, tipo, tarifa}
  end
end

Peaje.registrar_vehiculo()
