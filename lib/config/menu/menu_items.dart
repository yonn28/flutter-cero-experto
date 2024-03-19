import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}


const appMenuItems = <MenuItem>[
  MenuItem(
    title: "botones", 
    subTitle: "varios botones", 
    link: "/buttons", 
    icon: Icons.smart_button_outlined),
  MenuItem(
    title: "tarjetas", 
    subTitle: "un contenedor estilizado", 
    link: "/cards", 
    icon: Icons.credit_card),
  MenuItem(
    title: "progressIndicators", 
    subTitle: "un contenedor estilizado", 
    link: "/progress", 
    icon: Icons.refresh_rounded),
  MenuItem(
    title: "snackbars y dialogos", 
    subTitle: "indicadores en pantalla", 
    link: "/snackbars", 
    icon: Icons.info_outline),
  MenuItem(
    title: "animations", 
    subTitle: "Statefull widged animado", 
    link: "/animated", 
    icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
    title: "ui-controls", 
    subTitle: "controls", 
    link: "/ui-controls", 
    icon: Icons.car_rental_outlined),
  MenuItem(
    title: "introducion a la app", 
    subTitle: "tutorial", 
    link: "/tutorial", 
    icon: Icons.accessibility_new_outlined),
  MenuItem(
    title: "infinite scroll", 
    subTitle: "Listas", 
    link: "/scroll", 
    icon: Icons.list_alt_rounded),
  MenuItem(
    title: "Riverpod Counter", 
    subTitle: "Introduccion a Riverpod", 
    link: "/counter", 
    icon: Icons.calculate),
  MenuItem(
    title: "Theme Changer", 
    subTitle: "cambiar tema de la app", 
    link: "/theme-changer", 
    icon: Icons.color_lens_outlined)
];