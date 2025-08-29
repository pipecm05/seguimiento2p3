defmodule Peaje do
  def registrar_vehiculo do
    placa = Util.input("Ingrese la placa del vehículo:", :string)
    tipo = Util.input("Ingrese el tipo de vehículo (Carro, Moto, Camión):", :string)
    peso = Util.input("Ingrese el peso del vehículo en toneladas:", :float)

    tarifa =
      case String.downcase(tipo) do
        "carro" -> 10000
        "moto" -> 5000
        "camión" -> 20000 + trunc(peso) * 2000
        "camion" -> 20000 + trunc(peso) * 2000
        _ -> 0
      end

    resultado = {placa, tipo, tarifa}

    IO.puts("Vehículo #{placa} (#{tipo}) debe pagar $#{tarifa}")
    resultado
  end
end
