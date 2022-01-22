import 'package:flutter/material.dart';

class Product {
  final String title, desc;
  final Color color;

  Product({
    required this.title,
    required this.desc,
    required this.color,
  });
}

List<Product> products = [
  Product(
    title: "Health",
    desc:
        "모든 국민은 고문을 받지 아니하며, 형사상 자기에게 불리한 진술을 강요당하지 아니한다. 모든 국민은 능력에 따라 균등하게 교육을 받을 권리를 가진다.",
    color: const Color(0xff71b8ff),
  ),
  Product(
    title: "Shop list",
    desc: "훈장등의 영전은 이를 받은 자에게만 효력이 있고, 어떠한 특권도 이에 따르지 아니한다.",
    color: const Color(0xFFff6374),
  ),
  Product(
    title: "meeting",
    desc: "누구든지 체포 또는 구속을 당한 때에는 적부의 심사를 법원에 청구할 권리를 가진다.",
    color: const Color(0xFF9ba0fc),
  ),
];
