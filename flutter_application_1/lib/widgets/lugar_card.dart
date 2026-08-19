import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/lugar.dart';
import 'package:cached_network_image/cached_network_image.dart';


class LugarCard extends StatefulWidget {
  final Lugar lugar;

  const LugarCard({super.key, required this.lugar});

  @override
  State<LugarCard> createState() => _LugarCardState();
}
//clase para crear la card de cada lugar con su informacion
class _LugarCardState extends State<LugarCard> { 
  bool _expandido = false; // Variable para controlar si la descripcion larga esta expandida o no

  void _toggleExpandido() {
    setState(() {
      _expandido = !_expandido;
    });
  }

  @override
  Widget build(BuildContext context) {
    final lugar = widget.lugar; // Obtiene el lugar pasado como argumento al widget LugarCard
    //crea la card con la informacion de cada lugar
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /* Paquete externo instalado (cached_network_image): carga y cachea
          la imagen desde internet. Muestra un loader mientras descarga
          (placeholder) y un ícono si la URL falla (errorWidget).
          Utiliza CachedNetworkImage para cargar la imagen desde la URL*/
          CachedNetworkImage( 
            imageUrl: lugar.imagenUrl,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => const Icon(
              Icons.broken_image_outlined,
            ),
          ),
          Padding( 
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(lugar.emoji, style: const TextStyle(fontSize: 20)),
                    const SizedBox(width: 8),
                    Text(
                      lugar.nombre,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
                Text(
                  lugar.provincia,
                  style: TextStyle(color: Colors.grey.shade600),
                ),
                const SizedBox(height: 8),
                Text(lugar.descripcionCorta),
                if (_expandido) ...[
                  const SizedBox(height: 8),
                  Text(lugar.descripcionLarga),
                ],
                const SizedBox(height: 10),
                //crea el boton para expandir y contraer la descripcion larga
                ElevatedButton(
                  onPressed: _toggleExpandido,
                  child: Text(_expandido ? 'Ocultar' : 'Ver más'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}