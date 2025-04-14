# sesion_2_moviles

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Sesión 2

## Esquema de la aplicación

- moster_chef_app
  - moster_chef_pagina_principal
    - lista_compra_pantalla (observa de lista_compra (Esto es lo que cambia, y lo que es observado))
      - lista_compra_pantalla_vacia
      - lista_compra_pantalla_llena
    - lista_recetas_pantalla

## Apuntes 
- La variable _páginas la he declado como static debido a que va a compartirse entre todas las instancias de la clase y no depende de ninguna.
- Podemos cambiar el tema claro y oscuro, usando en el ThemeData: Brignetness.dark o Brightness.light. y fuera el dartTheme.Dark y el themMode: com Thememode.system.

## Patrones de diseño
- Patrón de interacción barra de navegación: Tiene como caracteristica que es un patrón de navegación persistente.
- Información anidada
- Estado IMPORTANTE: 
- Boton hacia atrás
- Herramienta
## Widgets
- BottonNavigationBar: Es un widget que permite la navegación entre diferentes pantallas de la aplicación. (En la parte de abajo). IMPORTANTE: Hacerlos const debido a que no van a cambiar.
- floatingActionButton: Es un widget que agrega un boton a la parte inferior, con el que podemos interactuar

## Patrón de diseño estado productor consumidor
- ChangeNotifier: Es el que observa el cambio. (Es la que tiene el estado mutable)
  - Tienen que tener los métodos notifyLsisteners() para notificar de que se ha producido un fallo.
- ChangeNotifierProvider: Es quien da acceso al estado mutable a las vistas que lo necesitan.
- Consumer: Es el observador, su tarea es escuchar los cambios que se producen, en un changeNotiffier
- Provider: Permite acceder a los estados, pero sin escuchar  los cambios de estado.

IMPORTENTE: Los observadores no son widgets, si no que son clases del modelo de la apliación.

IMPORTANTE: Tengo que crear un changeNotifier, que tiene la logica, luego esto, lo encapsulo en un changeNotifierProvider, que es el que produce los cambios. (A estos se les pasa el contexto para que sean visibles hacia todo el arbol). (Son 3 capas: changenotifier, el changenotifierProvider y el consumer).

## Opciones
- BottonNavigationBarItem:
  - icon: Icono que se muestra en la barra de navegación.
  - label: Texto que se muestra en la barra de navegación del icono.

- BottomNavigationBar: 
  - currentIndex: Indica el índice de la pestaña seleccionada actualmente.
  - onTap: Función que se ejecuta cuando se selecciona una pestaña. Recibe el índice de la pestaña seleccionada.

- Scaffold:
  - floatingActionButton: Botón de acción flotante que se muestra en la pantalla. Se puede personalizar con un icono y una función onPressed.

- ChangeNotifierProvider:
  - create: Función que crea una instancia del ChangeNotifier (Se le pasa el contexto, para que ande)
  - child: Widget hijo que tiene acceso al ChangeNotifier proporcionado.

- Consumer: Hay que ponerlo a disposición de uno de los changeNotifier, por eso se pone entre angulos.
  - builder:
    - context : Es el contexto
    - child: Las vistas que no cambian.
    - manager: En nuestro caso es el objeto del que escuchamos 