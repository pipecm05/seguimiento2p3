defmodule InventarioLibreria do
  def main do
    # 1. Pedir título del libro
    titulo = UtilTest.input("Ingrese el título del libro:", :string)

    # 2. Pedir cantidad de unidades (entero)
    cantidad = UtilTest.input("Ingrese la cantidad de unidades disponibles:", :integer)

    # 3. Pedir precio unitario (float)
    precio_unitario = UtilTest.input("Ingrese el precio unitario:", :float)

    # 4. Calcular valor total
    valor_total = cantidad * precio_unitario

    # 5. Mostrar resultados formateados
    mensaje =
      "El libro \"#{titulo}\" tiene #{cantidad} unidades,\n" <>
      "con un valor total de $#{Float.round(valor_total, 2)}."
    UtilTest.show_message(mensaje)
  end

end

# Ejecutar el programa
InventarioLibreria.main()
