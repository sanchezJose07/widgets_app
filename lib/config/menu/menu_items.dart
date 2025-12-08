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
  
  ];