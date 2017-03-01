-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-02-2017 a las 18:27:09
-- Versión del servidor: 5.7.14
-- Versión de PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `carritocompras`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--
USE id941131_carritocompras;

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `usuario` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `usuario`, `password`) VALUES
(2, 'admin', 'admin_2daw');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `Id` int(11) NOT NULL,
  `numeroventa` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` text COLLATE utf8_spanish_ci NOT NULL,
  `subtotal` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `imagen` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `precio` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `imagen`, `precio`) VALUES
(1, 'Portatil ASUS', '     Colores expresivos. Acabados impresionantes. La elegante serie X de ASUS estÃ¡ diseÃ±ada para tus tareas informÃ¡ticas diarias y estÃ¡ disponible en varios colores expresivos y distintos acabados texturizados para que destaques entre la multitud. Los portÃ¡tiles de la serie X de ASUS presentan un elegante acabado con efecto metÃ¡lico brillante, pulido o cepillado.      DiseÃ±ado para un entretenimiento envolvente. Los portÃ¡tiles de la serie X de ASUS estÃ¡n diseÃ±ados para ofrecerte una experiencia multimedia envolvente. Las tecnologÃ­as exclusivas de ASUS, como el sistema de audio SonicMaster, que incluye la tecnologÃ­a ICEpower, ASUS Splendid y el sistema de vÃ­deo ASUS Tru2Life, dan vida a tus pelÃ­culas y canciones.      El increÃ­ble sonido de ASUS SonicMaster. El sistema de audio ASUS SonicMaster, que incorpora la tecnologÃ­a ICEpower, permite a los portÃ¡tiles de la serie X de ASUS ofrecer un sonido cristalino. Estos modelos integran un altavoz de 3 W con una cÃ¡mara de sonido de 24 cc y un diseÃ±o especial de la lÃ­nea de transmisiÃ³n para ofrecer graves potentes y profundos y voces nÃ­tidas. AdemÃ¡s, estÃ¡n ajustados para lograr diÃ¡logos mÃ¡s nÃ­tidos y sonidos envolventes realistas.      Ajustes optimizados mediante AudioWizard. ASUS AudioWizard te ofrece cinco preajustes de audio (MÃºsica, PelÃ­culas, Juegos, DiÃ¡logo y GrabaciÃ³n) para que puedas disfrutar de los mejores ajustes hagas lo que hagas. PodrÃ¡s cambiar entre ellos de un modo muy sencillo a travÃ©s de la interfaz de AudioWizard, realmente sencilla e intuitiva.     VÃ­deo con pÃ­xeles perfectos, siempre. La tecnologÃ­a de vÃ­deo ASUS Tru2Life consigue que tus vÃ­deos sean espectaculares. Optimiza de forma inteligente cada pÃ­xel de cada fotograma de vÃ­deo para mejorar la nitidez y el contraste un 150 % de modo que puedas disfrutar de la mejor calidad de imagen posible en todo momento.     Conexiones mÃ¡s rÃ¡pidas y sencillas gracias al USB Tipo C. Los portÃ¡tiles de la serie X de ASUS ponen a tu disposiciÃ³n una amplia variedad de opciones de conectividad, entre las que se incluyen el USB 3.0 Tipo C, puertos HDMI y VGA, un lector de tarjetas SD/SDHC/SDXC 3 en 1 y mucho mÃ¡s, para garantizar la compatibilidad con distintos perifÃ©ricos y dispositivos. El puerto USB Tipo C reversible garantiza una conexiÃ³n correcta en todo momento.      Entrada sencilla. Los portÃ¡tiles de la serie X de ASUS VivoBook utilizan las tecnologÃ­as de teclado y touchpad mÃ¡s recientes. DelÃ©itate con pulsaciones con una gran capacidad de respuesta y con un touchpad de alta precisiÃ³n con tecnologÃ­a de rechazo de la palma de la mano para disfrutar de una experiencia de entrada mejorada.     MÃ¡xima comodidad al escribir. El teclado completo tipo isla de una pieza permite escribir con la mÃ¡xima comodidad. La conexiÃ³n trasera mejorada ofrece 2,3 mm de recorrido de tecla y flotaciÃ³n de tecla mÃ­nima para disfrutar de pulsaciones mÃ¡s sÃ³lidas y con una mayor capacidad de respuesta.     Touchpad mÃ¡s grande e inteligente. Los grandes touchpad de 106 mm Ã— 74 mm de la serie X incluyen una funciÃ³n de rechazo de la palma de la mano que diferencia entre la pulsaciÃ³n del dedo y el contacto de la palma de la mano para evitar movimientos de cursor no intencionados.     Long-lasting polymer battery. BaterÃ­a de polÃ­mero de larga duraciÃ³n Los portÃ¡tiles de la serie X de ASUS incorporan una baterÃ­a de polÃ­mero de litio que ofrece hasta 700 ciclos de carga, es decir, tres veces la duraciÃ³n de las baterÃ­as de cilindros de ion de litio convencionales.', 'asus.jpg', 320),
(2, 'Altavoces Logitech', 'Sonido estereo pleno y detallado con graves profundos con Logitech Z200', 'altavoces.jpg', 24.95),
(13, 'MicrÃ³fono', 'CaracterÃ­sticas:      MicrÃ³fono para escritorio     Para chatear, jugar a juegos, cantar, etc.     Ãngulo ajustable     BotÃ³n silenciador (Mute)     Cable de 1,80 m con enchufe de 3,5 mm  Especificaciones Elvii:      Puertos e Interfaces         TecnologÃ­a de conectividad: AlÃ¡mbrico         Interfaz del dispositivo: 3.5 mm (1/8 ")         Longitud de cable: 1,8 m      Detalles tÃ©cnicos         NÃºmero de productos incluidos: 1 pieza(s)      Color         Color del producto: Negro      MicrÃ³fono         Tipo: PC         MicrÃ³fono mudo: Si', '322968_microfono.jpg', 21.95),
(4, 'Auriculares', 'HyperX Cloud caracterÃ­sticas      Sonido con calidad de estudio     Diadema de alta calidad en material viscoelÃ¡stico exclusivo de HyperX     Resistente estructura de acero     MicrÃ³fono con cancelaciÃ³n de ruido extraÃ­ble     Unidades direccionales de 50 mm, de Ãºltima generaciÃ³n     Compatibilidad multiplataforma  Especificaciones:      Auriculares:         Unidad: dinÃ¡mica de 50 mm, con imanes de neodimio         Tipo: circumaural, cerrado por la parte trasera         Respuesta de frecuencia: 12 Hzâ€“28 000 Hz         Impedancia: 30 Î©         Nivel de presiÃ³n acÃºstica: 104.5 dBSPL/mW a 1 kHz         DistorsiÃ³n armÃ³nica total: < 2%         Potencia de entrada: 30 mW estimada; 500 mW mÃ¡x.         Peso: 360 g         Peso con micro: 376 g         Longitud y tipo de cable: Auriculares (1 m) + Caja de control de audio (2 m)         ConexiÃ³n: Auriculares (conector, 3,5 mm, 4 polos) + Caja de control de audio (conectores para micro y estÃ©reo, 3,5 mm)     MicrÃ³fono:         Elemento: MicrÃ³fono de condensador electret         PatrÃ³n polar: unidireccional, cancelaciÃ³n de ruido         Respuesta de frecuencia: 50 Hz-18 000 Hz         Sensibilidad: -40 dBV (0dB=1V/Pa,1kHz)', 'auriculares.jpg', 125),
(5, 'Monitor Samsung', 'Te presentamos el  LS24F350FHUXEN 24" LED de Samsung. Este fantÃ¡stico monitor te ofrece una calidad visual optimizada con Mega Dynamic Contrast Ratio y un mayor Ã¡ngulo de visiÃ³n gracias a la caracterÃ­stica Magic Angle. Tienen un diseÃ±o ligero y moderno, perfecto para cualquier entorno, y con modo Eco para garantizarte la mÃ¡xima eficiencia energÃ©tica.', '933502_monitor.jpg', 145),
(6, 'Logitech Gamepad', 'Control estilo consola en los juegos para PC, con distribuciÃ³n de botones habitual', '74982_joysticks.jpg', 26.95),
(7, 'Logitech WebCam', 'La webcam HD Logitech C270 ofrece unas especificaciones sobresalientes a un precio excepcional para que tus videoconferencias transmitan con nitidez tu profesionalidad.', '784118_camara.jpg', 23.95),
(8, 'Proyector ViewSonic', 'El proyector LightStream PJD5155 se hace notar con un estilo elegante y un rendimiento audiovisual superior. Su diseÃ±o curvilÃ­neo, que incluye un teclado tÃ¡ctil y pies antideslizantes, tambiÃ©n presenta una interfaz intuitiva y fÃ¡cil de usar. Las exclusivas tecnologÃ­as SuperColorâ„¢ y SonicExpertâ„¢ proporcionan uno de los mejores rendimientos audiovisuales de su clase. El PJD5155 cuenta con conectividad HDMI para transferir imagen y sonido fÃ¡cilmente con un solo cable, ademÃ¡s de una resoluciÃ³n estÃ¡ndar SVGA 4:3 (800 x 600). Con una lÃ¡mpara de 3.300 lÃºmenes y una relaciÃ³n de contraste de 20.000:1, puede proyectar imÃ¡genes nÃ­tidas y brillantes en salas de reuniones o aulas de tamaÃ±o pequeÃ±o o mediano. Este proyector, que incorpora VGA (2x), vÃ­deo compuesto, S-Video y una salida VGA, asÃ­ como entrada y salida de audio, Mini USB y RS232, ofrece flexibilidad para conectarse con equipos analÃ³gicos. DynamicEcoâ„¢ reduce el consumo elÃ©ctrico hasta un 70 % y amplÃ­a la vida Ãºtil de la lÃ¡mpara hasta 10.000 horas mÃ¡s.', '126923_proyector.jpg', 240.95),
(9, 'Logitech Wireless Presenter', 'Un presentador inalÃ¡mbrico, con controles intuitivos y un puntero lÃ¡ser rojo que ayuda a explicarse y dar en el punto justo.', '601929_mando.jpg', 36.96);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id` int(11) NOT NULL,
  `Nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `Apellido` text COLLATE utf8_spanish_ci NOT NULL,
  `Usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `Password` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id`, `Nombre`, `Apellido`, `Usuario`, `Password`) VALUES
(12, 'Monica', 'Daza', 'monica_2daw', '2daw');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
