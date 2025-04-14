import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sesion_2_moviles/lista_compra.dart';
import 'package:sesion_2_moviles/lista_compra_pantalla_vacia.dart';

class ListaCompraPantalla extends StatelessWidget {
  const ListaCompraPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    //4
    return Scaffold(
      // 6
      body: construirPantallaListaCompra(),
      floatingActionButton: FloatingActionButton(
        elevation: 2,
        shape: const CircleBorder(),
        // 7
        onPressed: () {

        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget construirPantallaListaCompra() {
    return Consumer<ListaCompra>(
        builder: (context, manager, child) {
          if (manager.productos.isNotEmpty) {
            // 11
            return Container(color: Colors.blueGrey);
          } else {
            return const ListaCompraPantallaVacia();
          }
        }
    );
  }

}
