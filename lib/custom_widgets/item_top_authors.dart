import 'package:flutter/material.dart';
import '../constants/app_strings.dart';
import '../data/dummy_data.dart';
class ItemTopAuthors extends StatelessWidget {
  const ItemTopAuthors({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(AppStrings.topauthor,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0XFF212121),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Text(
                  AppStrings.viewall,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6949FF),
                  ),
                ),
                SizedBox(width: 4),
                Icon(
                  Icons.arrow_forward,
                  size: 16,
                  color: Color(0xFF6949FF),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
     SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: authors.length,
              itemBuilder: (context, index) {
                return Container(
                  width: 80,
                  margin: const EdgeInsets.only(right: 14),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/images/alfanzo.png",
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        authors[index]["name"]!,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
     )
    ]));
  }
}
