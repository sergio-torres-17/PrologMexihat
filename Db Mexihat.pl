%________________________________________________
% Tipos de producto encontrado
tipo_producto(sombrero).
tipo_producto(tenis).
tipo_producto(bolsa).
tipo_producto(gorras).
tipo_producto(aretes).
tipo_producto(fundas_celular).

%________________________________________________
% Tipos de producto encontrado
estilos(1,cubano).
estilos(2,indiana).
estilos(3,vaquero).
estilos(4,playa).
estilos(5,converse).
estilos(6,vans).
estilos(7,bolsa_playa).
estilos(8,bolsa_mano).
estilos(9,morral).
%________________________________________________
% Materiales Dsiponibles independiente del stock
materiales_disponibles(lona).
materiales_disponibles(yute).
materiales_disponibles(gamuza).
materiales_disponibles(dubetina).
materiales_disponibles(vinipiel).
materiales_disponibles(playa).
materiales_disponibles(pasta_francesa).
materiales_disponibles(vinil).
%________________________________________________
% Estilos de sombrero disponibles
estilos_disponibles(sombrero,cubano).
estilos_disponibles(sombrero,indiana).
estilos_disponibles(sombrero,vaquero).

%________________________________________________
% colores por producto
colores(sombrero,arena).
colores(sombrero,blanco).
colores(sombrero,chocolate).
colores(sombrero,ivory).
colores(sombrero,negro).
colores(sombrero,rojo).
colores(sombrero,verde).
colores(sombrero,amarillo).
colores(sombrero,azul_cielo).
colores(sombrero,azul_marino).
colores(sombrero,gris).
colores(sombrero,tabaco).
colores(tenis,blanco).
colores(tenis,azul).
colores(tenis,negro).
colores(gorras,blanco).
colores(gorras,negra).
colores(gorras,rosa).
colores(gorras,cafe).
colores(aretes,blanco).
colores(aretes,negro).
colores(aretes,cafe).
colores(bolsas,paja).



%________________________________________________
% material pro tipo tipo de producto
materialForTypeProduct(sombrero,lona).
materialForTypeProduct(sombrero,gamuza).
materialForTypeProduct(sombrero,dubetina).
materialForTypeProduct(sombrero,yute).
materialForTypeProduct(sombrero,palma).
materialForTypeProduct(tenis,tela).
materialForTypeProduct(tenis,piel).
materialForTypeProduct(bolsas,yute).
materialForTypeProduct(bolsas,manta).
materialForTypeProduct(bolsas,palma).
materialForTypeProduct(aretes,pasta_francesa).
materialForTypeProduct(collares,pasta_francesa).

%________________________________________________
% Clasificación por diseño
disenoclasificacion(sombrero, flores).
disenoclasificacion(sombrero, plumas).
disenoclasificacion(sombrero, mariposas).
disenoclasificacion(sombrero, caballos).
disenoclasificacion(sombrero, mandalas).
disenoclasificacion(sombrero, animales).
disenoclasificacion(sombrero, colibri).
disenoclasificacion(sombrero, personajes).
disenoclasificacion(sombrero, especiales).
disenoclasificacion(aretes, flores).
disenoclasificacion(aretes, animales).
disenoclasificacion(collares, flores).
disenoclasificacion(collares, animales).
disenoclasificacion(tenis, flores).
disenoclasificacion(tenis, animales).
disenoclasificacion(bolsas, flores).
disenoclasificacion(bolsas, animales).

%________________________________________________
% Relacion de nombre de diseño con ID
:- dynamic disenos/2.

disenos(1, flores).
disenos(2, alcatraz).
disenos(3, cactus).
disenos(4, palmeras).
disenos(5, girasol).
disenos(6, turquesa).
disenos(7, hojas_verdes).
disenos(8, rosas).
disenos(9, tulipan).
disenos(10, suculenta).
disenos(11, pluma_mosaico).
disenos(12, pluma_arcoiris).
disenos(13, pluma_dorada).
disenos(14, pluma_pavorreal).
disenos(15, atrapasuenos).
disenos(16, pluma_degradada).
disenos(17, mariposa_monarca).
disenos(18, mariposa_roja).
disenos(19, mariposa_monarca_en_rojo).
disenos(20, triple_mariposa).
disenos(21, mariposa_con_girasoles).
disenos(22, yegua).
disenos(23, caballo_con_plumas).
disenos(24, caballo_con_rosas).
disenos(25, silueta_caballo).
disenos(26, mandala_negra).
disenos(27, mandala_roja).
disenos(28, mandala_rosa_azul).
disenos(29, mandala_ojo_turco).
disenos(30, mandala_huichol).
disenos(31, mandala_dorada).
disenos(32, mandala_negra).
disenos(33, venado).
disenos(34, coralillo).
disenos(35, guacamaya).
disenos(36, toro).
disenos(37, tortuga).
disenos(38, unicornio).
disenos(39, orca).
disenos(40, pez_colorido).
disenos(41, dragon).
disenos(42, lobo).
disenos(43, perro_blanco).
disenos(44, buho).
disenos(45, leopardo).
disenos(46, serpiente).
disenos(47, chihuahua).
disenos(48, aguila).
disenos(49, gallo).
disenos(50, lagartija).
disenos(51, loro).
disenos(52, leon).
disenos(53, libelula).
disenos(54, colibri).
disenos(55, colibir_emplumado).
disenos(56, colibri_suculentas).
disenos(57, colibri_punteado ).
disenos(58, colibri_flor_amarilla).
disenos(59, colibri_plumas_moradas).
disenos(60, colibri_acuarela).
disenos(61, colibri_huichol).
disenos(62, colibri_cuerpo_de_flores).
disenos(63, colibri_con_rosa).
disenos(64, colibri_rojo).
disenos(65, pokemon).
disenos(66, princesas).
disenos(67, frida).
disenos(68, masha).
disenos(69, spiderman).
disenos(70, minnie_mouse).
disenos(71, plantas_vs_zombies).
disenos(72, danny_phantom).
disenos(73, stranger_things).
disenos(74, ariel).
disenos(75, bob_esponja).
disenos(76, pikachu).
disenos(77, batman).
disenos(78,rey_leon).
disenos(79,gato_sonriente).
disenos(80,panda_rojo).
disenos(81, calavera_con_colibri).
disenos(82, noche_estrellada).
disenos(83, tenango).
disenos(84, guitarra).
disenos(85, serpiente_emplumado).
disenos(86, muneca_lele).
disenos(87, alebrije).
disenos(88, calavera_con_flores).
disenos(89, desierto).
disenos(90, marciano).
disenos(91, catrina).
disenos(92, catrina_fumadora).
disenos(93, maquillaje).
disenos(94, copas_de_vino).
disenos(95, arco_de_la_calzada).
disenos(96, piramide).
disenos(97, calavera_con_penacho).
disenos(98, quetzalcoatl).
disenos(99, hojas_coloridas).
disenos(100, colibri_cola_de_colores).
disenos(101, colibri_jade).
disenos(102, ave_azul_rey).
disenos(103, mariposas).
disenos(104, canarios).
disenos(105, flechas).
disenos(106, flechas_con_plumas).
disenos(107, flechas_flores_otonales).
disenos(108, noche_buena).
disenos(109, luna_y_estrellas).
disenos(110, pluma_cafe).
disenos(111, pluma_colorida).
disenos(112, caballo_en_texana).
disenos(113, mandala_naranja).
disenos(114, hojas_verdes).
disenos(115, tigres).
disenos(116, quetzal).
disenos(117, vaquero_atardecer).
disenos(118, carrera_de_barriles).
disenos(119, vaqueros_de_rodeo).
disenos(120, vaquero_en_toro).
disenos(121, colibri_con_flores).
disenos(122, cactus).
disenos(123, torre_eiffel).
disenos(124, muneca_lele_con_florecitas).
disenos(125, musica).
disenos(126, pvsz).
disenos(127, it).
disenos(128, figuritas).
disenos(129, pueblito_magico).
disenos(130, mariposas).
disenos(131, flor_roja).
disenos(132, flores_fondeado).
disenos(133, calavera).
disenos(134, libelula_mini).
disenos(135, calavera_collar).
disenos(136, monarca_aretes).
disenos(137, monarca_collar).

%________________________________________________
% Proveedores
proveedores(beristain).
proveedores(politec).
proveedores(politec).

%________________________________________________
% Tallas disponibles
tallas(1,unitalla).
tallas(2,s_).
tallas(3, m_).
tallas(4, l_).
tallas(5, xl_).
tallas(6, xxl_).
tallas(7, nino_).

%________________________________________________
% Relacion del diseno con su precio
precio_diseno(1, 300).
precio_diseno(2, 325).
precio_diseno(3, 340).
precio_diseno(4, 300).
precio_diseno(5, 325).
precio_diseno(6, 325).
precio_diseno(7, 325).
precio_diseno(8, 325).
precio_diseno(9, 300).
precio_diseno(10, 335).
precio_diseno(11, 300).
precio_diseno(12, 310).
precio_diseno(13, 300).
precio_diseno(14, 300).
precio_diseno(15, 350).
precio_diseno(16, 310).
precio_diseno(17, 310).
precio_diseno(18, 300).
precio_diseno(19, 350).
precio_diseno(20, 310).
precio_diseno(21, 355).
precio_diseno(22, 325).
precio_diseno(23, 350).
precio_diseno(24, 380).
precio_diseno(25, 300).
precio_diseno(26, 310).
precio_diseno(27, 380).
precio_diseno(28, 350).
precio_diseno(29, 400).
precio_diseno(30, 380).
precio_diseno(31, 380).
precio_diseno(32, 300).
precio_diseno(33, 420).
precio_diseno(34, 320).
precio_diseno(35, 350).
precio_diseno(36, 440).
precio_diseno(37, 320).
precio_diseno(38, 360).
precio_diseno(39, 380).
precio_diseno(40, 370).
precio_diseno(41, 465).
precio_diseno(42, 475).
precio_diseno(43, 360).
precio_diseno(44, 310).
precio_diseno(45, 565).
precio_diseno(46, 680).
precio_diseno(47, 360).
precio_diseno(48, 460).
precio_diseno(49, 400).
precio_diseno(50, 340).
precio_diseno(51, 360).
precio_diseno(52, 460).
precio_diseno(53, 310).
precio_diseno(54, 360).
precio_diseno(55, 370).
precio_diseno(56, 360).
precio_diseno(57, 300).
precio_diseno(58, 320).
precio_diseno(59, 360).
precio_diseno(60, 320).
precio_diseno(61, 360).
precio_diseno(62, 380).
precio_diseno(63, 360).
precio_diseno(64, 340).
precio_diseno(65, 600).
precio_diseno(66, 550).
precio_diseno(67, 340).
precio_diseno(68, 460).
precio_diseno(69, 400).
precio_diseno(70, 400).
precio_diseno(71, 570).
precio_diseno(72, 400).
precio_diseno(73, 550).
precio_diseno(74, 480).
precio_diseno(75, 425).
precio_diseno(76, 390).
precio_diseno(77, 400).
precio_diseno(78, 575).
precio_diseno(79, 400).
precio_diseno(80, 410).
precio_diseno(81, 600).
precio_diseno(82, 570).
precio_diseno(83, 430).
precio_diseno(84, 425).
precio_diseno(85, 680).
precio_diseno(86, 340).
precio_diseno(87, 300).
precio_diseno(88, 390).
precio_diseno(89, 420).
precio_diseno(90, 605).
precio_diseno(91, 450).
precio_diseno(92, 480).
precio_diseno(93, 430).
precio_diseno(94, 370).
precio_diseno(95, 540).
precio_diseno(96, 600).
precio_diseno(97, 400).
precio_diseno(98, 500).
precio_diseno(99, 420).
precio_diseno(100, 420).
precio_diseno(101, 420).
precio_diseno(102, 420).
precio_diseno(103, 420).
precio_diseno(104, 420).
precio_diseno(105, 460).
precio_diseno(106, 450).
precio_diseno(107, 500).
precio_diseno(108, 470).
precio_diseno(109, 470).
precio_diseno(110, 470).
precio_diseno(111, 490).
precio_diseno(112, 530).
precio_diseno(113, 460).
precio_diseno(114, 480).
precio_diseno(115, 560).
precio_diseno(116, 530).
precio_diseno(117, 440).
precio_diseno(118, 400).
precio_diseno(119, 380).
precio_diseno(120, 470).
precio_diseno(121, 1500).
precio_diseno(122, 1500).
precio_diseno(123, 1000).
precio_diseno(124, 1550).
precio_diseno(125, 1550).
precio_diseno(126, 1710).
precio_diseno(127, 1850).
precio_diseno(128, 1700).
precio_diseno(129, 480).
precio_diseno(130, 250).
precio_diseno(131, 340).
precio_diseno(132, 320).
precio_diseno(133, 200).
precio_diseno(134, 270).
precio_diseno(135, 130).
precio_diseno(136, 150).
precio_diseno(137, 150).

%________________________________________________
% empleados
empleados(ana_cristina_argote_gasca, ceo).
empleados(guadalupe_gasca_gonzalez, pintora).
empleados(silvia_gasca_gonzalez, compras).
empleados(daniela_gasca_gonzalez, ventas).
empleados(ana_cristina_gasca_gonzalez, mercadotecnia).
empleados(sergio_saul_torres_ibarra, sistemas).
empleados(marco_antonio_argote_gasca, calidad).


% Datos para cotizar
costoProd(sombrero,60).
costoProd(tenis,1200).
costoProd(bolsa,70).
costoProd(aretes,40).
costoCate(flores,240).
costoCate(animal,250).
costoCate(personaje,400).
costoCate(pluma,240).
costoCate(mariposa,250).
costoCate(mandala,280).
costoCate(caballo,290).
costoCate(colibri,260).
costoCate(especial,430).
costoMate(lona,60).
costoMate(yute,70).
costoMate(gamuza,100).
costoMate(dubetina,80).
costoMate(vinipiel,100).


%________________________________________________
% Reglas

% Trae todos los tipos de producto.
productos :- tipo_producto(X), format("Producto: ~w", [X]), nl.

% Trae todos los dise os.
disenost :- disenos(_,X), format("Dise o: ~w", [X]), nl.

% Trae todos los colores.
colorest :- colores(_,X), format("Color: ~w", [X]), nl.

% Busca dise o en base a un rango de precios.


% Trae las tallas.
tallast :- tallas(_,X), format("Talla: ~w", [X]), nl.

% Busca precio seg n el tipo de producto, color, y dise o.


% A adir y borrar elementos.
agregar(X,Y) :- assertz(disenos(X,Y)).

% Saber a que categor a pertenece un dise o.
diseno_cat(X,Design):- setof(Y, disenoclasificacion(Y,X), Design).

% Cotizar
cotizador(T,M,D,Z) :- format("Salida ~w ", [T]),
costoProd(T,X), costoMate(M,W), costoCate(D,Y), 
                 C is (X + W + Y),
                 string_concat("$ ",C,Z).