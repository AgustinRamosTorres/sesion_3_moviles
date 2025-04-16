enum Importancia { baja, media, alta }

class Producto {
  final String id;
  final String nombre;
  final Importancia importancia;
  final int cantidad;
  final bool completado;

  Producto({
    required this.id,
    required this.nombre,
    required this.importancia,
    required this.cantidad,
    this.completado = false,
  });

  Producto copiaSinNulo({
    String? id,
    String? nombre,
    Importancia? importancia,
    int? cantidad,
    bool? completado,
  }) {
    return Producto(
      id: id ?? this.id,
      nombre: nombre ?? this.nombre,
      importancia: importancia ?? this.importancia,
      cantidad: cantidad ?? this.cantidad,
      completado: completado ?? this.completado,
    );
  }
}
