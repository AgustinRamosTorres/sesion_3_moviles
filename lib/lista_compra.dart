import 'package:flutter/cupertino.dart';
import 'package:sesion_3_moviles/producto.dart';

class ListaCompra extends ChangeNotifier {
  final _productos = <Producto>[];

  List<Producto> get productos => List.unmodifiable(_productos);

  void borraProducto(int indice) {
    _productos.remove(indice);
    notifyListeners();
  }

  void anadeProducto(Producto item) {
    _productos.add(item);
    notifyListeners();
  }

  void actualizaProducto(int indice, Producto item) {
    _productos[indice] = item;
    notifyListeners();
  }

  void marcaCompletado(int indice, bool completado) {
    final producto = _productos[indice];
    _productos[indice] = producto.copiaSinNulo(completado: completado);
    notifyListeners();
  }
}
