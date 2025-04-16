import 'package:flutter/material.dart';
import 'package:sesion_3_moviles/lista_compra.dart';

class ListaCompraPantallaLlena extends StatelessWidget {
  final ListaCompra listaCompra;

  const ListaCompraPantallaLlena({Key? key, required this.listaCompra}): super(key: key);


  @override
  Widget build(BuildContext context) {
    final productos = listaCompra.productos;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.separated(
        itemCount: productos.length,
        separatorBuilder: (context, index){
          return const SizedBox(height: 8,);
        },
        itemBuilder: (context, index) {
          final producto = productos[index];
          // 18
          return Text(
            producto.nombre
          );
        }
      )
    );
  }
}
