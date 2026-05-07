import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kutuku/home/view_model/home_view_model.dart';

class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final List<IconData> icons = [
      CupertinoIcons.house_fill,
      CupertinoIcons.cube_box,
      CupertinoIcons.person,
      CupertinoIcons.bell,
    ];

    return Consumer<HomeViewModel>(
      builder: (context, viewModel, child) {
        return Container(
          height: 68,
          decoration: BoxDecoration(
            color: const Color(0xFF1A1A2E),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.18),
                blurRadius: 20,
                offset: const Offset(0, -4),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(icons.length, (index) {
              final bool selected = viewModel.selectedNavIndex == index;
              final bool hasBadge = index == 3;

              return GestureDetector(
                onTap: () => viewModel.selectNav(index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                  decoration: BoxDecoration(
                    color: selected
                        ? const Color(0xFFFF6B35).withValues(alpha: 0.15)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Icon(
                        icons[index],
                        size: 24,
                        color: selected
                            ? const Color(0xFFFF6B35)
                            : const Color(0xFF556070),
                      ),
                      if (hasBadge)
                        Positioned(
                          top: -5,
                          right: -7,
                          child: Container(
                            width: 15,
                            height: 15,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFCC00),
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: const Color(0xFF1A1A2E),
                                width: 1.5,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 7,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
