import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;

  const CustomBottomNavBar({
    super.key,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
          const BorderRadius.vertical(top: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 20,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: Row(
          children: [
            buildItem(Icons.home_rounded, "Home", 0),
            buildItem(Icons.grid_view_rounded, "Library", 1),
            buildJoinItem(),
            buildItem(Icons.add_box_outlined, "Create", 3),
            buildItem(Icons.person_outline, "Profile", 4),
          ],
        ),
      ),
    );
  }

  Widget buildItem(IconData icon, String label, int index) {
    final isSelected = selectedIndex == index;

    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 28,
            child: Icon(
              icon,
              size: 24,
              color: isSelected
                  ? const Color(0xFF35383F)
                  : const Color(0xFF9E9E9E),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w600,
              color: isSelected
                  ? const Color(0xFF35383F)
                  : const Color(0xFF9E9E9E),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildJoinItem() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 28,
            child: Image.asset(
              "assets/images/logo.png",
              height: 24,
              width: 24,
            ),
          ),
          const SizedBox(height: 6),
          const Text("Join",
            style: TextStyle(
              fontSize: 10,
              color: Color(0xFF9E9E9E),
            ),
          ),
        ],
      ),
    );
  }
}