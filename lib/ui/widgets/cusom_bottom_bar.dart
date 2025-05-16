import 'package:flutter/material.dart';
class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(
        left: w * 0.025,
        right: w * 0.025,
        bottom: h * 0.035,
      ),
      child: Container(
        height: h * 0.09,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 15,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home, 0),
            _buildNavItem(Icons.bookmark_border, 1),
            _buildNavItem(Icons.search, 2),
            _buildNavItem(Icons.notifications_none, 3),
            _buildNavItem(Icons.settings, 4),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, int index) {
    return IconButton(
      icon: Icon(
        icon,
        size: 28,
        color: currentIndex == index ? Colors.black : Colors.grey,
      ),
      onPressed: () => onTap(index),
    );
  }
}
