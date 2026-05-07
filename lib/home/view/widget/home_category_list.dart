import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:kutuku/home/view_model/home_view_model.dart';
import 'package:kutuku/home/model/category_model.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context, viewModel, child) {
        return SizedBox(
          height: 92,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: viewModel.categories.length,
            itemBuilder: (context, index) {
              final CategoryModel cat = viewModel.categories[index];
              final bool selected = index == viewModel.selectedCategoryIndex;

              return GestureDetector(
                onTap: () => viewModel.selectCategory(index),
                child: Container(
                  margin: const EdgeInsets.only(right: 12),
                  child: Column(
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 220),
                        curve: Curves.easeInOut,
                        width: 62,
                        height: 62,
                        decoration: BoxDecoration(
                          color: selected
                              ? const Color(0xFF4ECDC4)
                              : const Color(0xFFF5F5F5),
                          borderRadius: BorderRadius.circular(
                            selected ? 22 : 16,
                          ),
                          boxShadow: selected
                              ? [
                                  BoxShadow(
                                    color: const Color(0xFF4ECDC4).withValues(alpha: 0.4),
                                    blurRadius: 14,
                                    offset: const Offset(0, 4),
                                  ),
                                ]
                              : [],
                        ),
                        child: Center(
                          child: Image.asset(
                            cat.image,
                            width: selected ? 42 : 36,
                            height: selected ? 42 : 36,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        cat.name,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 11,
                          fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
                          color: selected ? const Color(0xFF1A1A1A) : const Color(0xFF999999),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
