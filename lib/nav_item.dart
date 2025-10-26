import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    super.key,
    required this.title,
    required this.icon,
    required this.isSelected,
    required this.onTap
  });

  final String title;
  final IconData icon;
  final bool isSelected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:
              (isSelected)
                  ? Colors.deepPurpleAccent.withValues(alpha: 0.3)
                  : Colors.transparent,
        ),
        child: Row(
          spacing: 5,
          children: [
            Icon(
              icon,
              color:
                  isSelected ? Colors.deepPurpleAccent : Colors.grey.shade700,
            ),
            Text(
              title,
              style: TextStyle(
                color:
                    isSelected ? Colors.deepPurpleAccent : Colors.grey.shade700,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
