import 'package:flutter/material.dart';
import 'package:todo_hive1/model/list_model.dart';

class Listdata extends StatelessWidget {
  const Listdata({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (context, index) => ListCard(
          product: products[index],
          press: () {},
        ),
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  const ListCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: product.color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Text(
              product.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              product.desc,
              maxLines: 5,
              style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
