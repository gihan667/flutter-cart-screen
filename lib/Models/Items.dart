import 'package:flutter/material.dart';

class Items {
  final int id;
  final String name;
  final String brand;
  final String description;
  final List<String> colors;
  final List<int> sizes;
  final String image;
  final double price;

  Items({
    @required this.id,
    @required this.brand,
    @required this.name,
    @required this.description,
    @required this.colors,
    @required this.sizes,
    @required this.image,
    @required this.price,
  });
}

// demo places

List<Items> demoProducts = [
  Items(
    id: 1,
    brand: 'Nike',
    name: 'SKID GRIP NAVY',
    description: 'First introduced in 1979 for elite handball players, these shoes are now beloved for their classic style. This version is built with a nubuck suede upper for a supple feel. A soft gum rubber outsole keeps them true to their vintage roots.',
    colors: ['Red', 'Green', 'Blue'],
    sizes: [40, 32, 35],
    image: 'assets/images/Item_1@2x.png',
    price: 49.00
  ),
  Items(
    id: 2,
    brand: 'Nike',
    name: 'GRIP NAVY',
    description: 'First introduced in 1979 for elite handball players, these shoes are now beloved for their classic style. This version is built with a nubuck suede upper for a supple feel. A soft gum rubber outsole keeps them true to their vintage roots.',
    colors: ['Red', 'Green', 'Blue'],
    sizes: [40, 32, 35],
    image: 'assets/images/Item_2@2x.png',
    price: 30.00
  ),
  Items(
    id: 3,
    brand: 'Nike',
    name: 'NON GRIP NAVY',
    description: 'First introduced in 1979 for elite handball players, these shoes are now beloved for their classic style. This version is built with a nubuck suede upper for a supple feel. A soft gum rubber outsole keeps them true to their vintage roots.',
    colors: ['Red', 'Green', 'Blue'],
    sizes: [40, 32, 35],
    image: 'assets/images/Item_3@2x.png',
    price: 50.00
  ),
  Items(
    id: 4,
    brand: 'Nike',
    name: 'DIGITAL SPORTS WATCH',
    description: 'First introduced in 1979 for elite handball players, these shoes are now beloved for their classic style. This version is built with a nubuck suede upper for a supple feel. A soft gum rubber outsole keeps them true to their vintage roots.',
    colors: ['Red', 'Green', 'Blue'],
    sizes: [40, 32, 35],
    image: 'assets/images/Item_4@2x.png',
    price: 35.00
  ),
];