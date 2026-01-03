import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String location;
  final bool isActive;
  final VoidCallback onToggle;

  const ProfileCard({
    super.key,
    required this.name,
    required this.location,
    required this.isActive,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 211, 209, 209),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black87,
            ),
            child: Icon(Icons.person, color: Colors.white),
          ),

          SizedBox(width: 14),

          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      location,
                      style: TextStyle(fontSize: 14, color: Colors.pinkAccent),
                    ),
                  ],
                ),

                Expanded(child: SizedBox()),

                IconButton(
                  onPressed: onToggle,
                  icon: Icon(
                    Icons.star,
                    size: 30,
                    color: isActive ? Colors.blue : Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
