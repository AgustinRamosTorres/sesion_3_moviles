import 'package:flutter/material.dart';
import 'package:sesion_2_moviles/producto.dart';
import 'package:uuid/uuid.dart';

class ListaCompraAniadirProducto extends StatefulWidget {
  final Function(Producto) crearProducto;
  final Function(Producto) editarProducto;
  final Producto? productoOriginal;
  final bool actualizando;

  const ListaCompraAniadirProducto({
    Key? key,
    required this.crearProducto,
    required this.editarProducto,
    this.productoOriginal,
  }) : actualizando = (productoOriginal != null),
       super(key: key);

  @override
  State<ListaCompraAniadirProducto> createState() =>
      _ListaCompraAniadirProductoState();
}

class _ListaCompraAniadirProductoState
    extends State<ListaCompraAniadirProducto> {
  final _controladorNombre = TextEditingController();
  String _nombre = '';
  bool _completado = false;

  //12
  @override
  void initState() {
    super.initState();
    _controladorNombre.addListener(() {
      setState(() {
        _nombre = _controladorNombre.text;
      });
    });
    // 22
  }

  void dispose() {
    _controladorNombre.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            // 8
            onPressed: () {
              final producto = Producto(
                id: widget.productoOriginal?.id ?? const Uuid().v1(),
                nombre: _controladorNombre.text,
                completado: _completado,
                //14
                importancia: Importancia.media,
                // 17
                cantidad: 1,
              );

              if (widget.actualizando) {
                widget.editarProducto(producto);
              } else {
                widget.crearProducto(producto);
              }
            },
          ),
        ],
        elevation: 0.0,
        title: const Text('Añadir/Editar producto'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            construyeCampoNombre(),
            // 13
          ],
        ),
      ),
    );
  }

  Widget construyeCampoNombre() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "Nombre del producto",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        TextField(
          controller: _controladorNombre,
          decoration: const InputDecoration(hintText: 'Nombre del producto'),
        ),
      ],
    );
  }
}
