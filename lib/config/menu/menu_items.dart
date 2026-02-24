import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;
  
  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: "Botones",
    subtitle: "Varios botones en flutter",
    link: "/buttons",
    icon: Icons.radio_button_checked_outlined 
  ),

  MenuItems(
    title: "Tarjetas",
    subtitle: "Contenedor estilizado",
    link: "/cards",
    icon: Icons.credit_card 
  ),
  
  MenuItems(
    title: "Progress Indicator",
    subtitle: "Generales y controlados",
    link: "/progress",
    icon: Icons.refresh_rounded 
  ),

  MenuItems(
    title: "Snackbars y dialogos",
    subtitle: "Cuadros de dialogos y licencias",
    link: "/snackbar",
    icon: Icons.info_outline 
  ),

  MenuItems(
    title: "Contenedores Animados",
    subtitle: "Statefull animados",
    link: "/animated",
    icon: Icons.check_box_outline_blank_outlined 
  ),

  MenuItems(
    title: "Ui Controls + tiles",
    subtitle: "Una serie de controles de flutter",
    link: "/ui-controls",
    icon: Icons.car_rental_outlined 
  ),
  
  ];