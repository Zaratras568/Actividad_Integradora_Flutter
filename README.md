### Autor: Miguel Angel Matiz Arias

# Ecuador Explorer 🇪🇨

Aplicación básica desarrollada en Flutter como proyecto de la actividad "Mi Primera Aplicación en Flutter". Ecuador Explorer muestra una lista de lugares turísticos de Ecuador (Quito, Guayaquil, Cuenca, Baños de Agua Santa e Islas Galápagos), cada uno con imagen, descripción y un botón interactivo que permite mostrar u ocultar información adicional del lugar.

## 1. Creación del proyecto y verificación del entorno

Antes de crear el proyecto se ejecuta flutter doctor para comprobar que el entorno esté correctamente instalado y no falte ningún componente necesario para el desarrollo.

![Workspace preview placeholder](https://res.cloudinary.com/lzzd6yy4/image/upload/f_auto,q_auto/Captura_de_pantalla_2026-08-08_180934)

Luego de comprobar que el entorno está correctamente instalado, se crea el proyecto y se abre el emulador de Android para comprobar su funcionamiento.

![Workspace preview placeholder](https://res.cloudinary.com/lzzd6yy4/image/upload/f_auto,q_auto/Captura_de_pantalla_2026-08-13_211211)


## 2. Pantalla principal

La pantalla principal está construida con MaterialApp y Scaffold, e incluye un AppBar con el título de la aplicación centrado, colores personalizados inspirados en la bandera de Ecuador, y una lista de tarjetas (Card) generada con ListView.builder. Cada tarjeta usa Column y Row para organizar una imagen, un ícono/emoji representativo, el nombre del lugar, su provincia, una descripción corta y un botón.

## 3. Interacción básica

Cada tarjeta incluye un botón ("Ver más" / "Ocultar") que muestra u oculta la descripción larga del lugar. Al presionarlo, el estado interno de la tarjeta cambia mediante setState, lo que actualiza la interfaz sin necesidad de crear una pantalla adicional.

![Workspace preview placeholder](https://res.cloudinary.com/zyirbcxr/image/upload/v1787114150/Captura_de_pantalla_2026-08-18_233540.png)

![Workspace preview placeholder](https://res.cloudinary.com/zyirbcxr/image/upload/v1787114236/Captura_de_pantalla_2026-08-18_233705.png)

## 4. Instalación de paquetes externos
### cached_network_image

Se instaló el paquete cached_network_image para cargar imágenes desde una URL de internet. Este paquete mantiene las imágenes en caché en el dispositivo (evitando descargarlas de nuevo) y permite mostrar un indicador de carga y un ícono alternativo cuando la imagen no puede cargarse, sin necesidad de programar ese comportamiento manualmente.

 ![Workspace preview placeholder](https://res.cloudinary.com/zyirbcxr/image/upload/v1787031306/Captura_de_pantalla_2026-08-18_003143.png)

### google_fonts

Adicionalmente, para darle un estilo más cuidado a la tipografía de la aplicación, se instaló el paquete google_fonts, utilizando la fuente Lora para los títulos de cada lugar.

![Workspace preview placeholder](https://res.cloudinary.com/zyirbcxr/image/upload/v1787112472/Captura_de_pantalla_2026-08-18_230716.png)

## 5. Aplicación en funcionamiento

A continuación se evidencia el correcto funcionamiento de la aplicación, junto con su tipografía personalizada y las tarjetas funcionando correctamente en el emulador.

![Workspace preview placeholder](https://res.cloudinary.com/zyirbcxr/image/upload/v1787113732/Captura_de_pantalla_2026-08-18_232838.png)
