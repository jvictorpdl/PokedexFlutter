import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({
    super.key,
    required this.title,
  });

  // void teste(int a, int b){}
  // void teste1(int a, [int? b]){}
  // void teste2(int a, {int? b}){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        key: const Key('value'),
        backgroundColor: Colors.white,
        title: Text(
          title,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.blueGrey,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.star,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.check_circle,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size(
            double.infinity,
            60,
          ),
          child: SizedBox(
            height: 50,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(6.0),
              children: [
                Chip(
                  backgroundColor: const Color(0xffcad2db),
                  label: Text(
                    "Todas as versões".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const VerticalDivider(),
                const CustomChip(
                  title: "TODAS",
                ),
                const VerticalDivider(),
                const CustomChip(
                  title: "TODAS",
                ),
                const VerticalDivider(),
                const CustomChip(
                  title: "TODAS",
                ),
                const VerticalDivider(),
                const CustomChip(
                  title: "TODAS",
                ),
              ],
            ),
          ),
        ),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  final String title;
  const CustomChip({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffcad2db),
        borderRadius: BorderRadius.circular(10.0),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Text(title),
    );
  }
}
