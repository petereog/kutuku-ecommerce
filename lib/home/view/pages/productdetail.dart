import 'package:flutter/material.dart';

class Productdetail extends StatefulWidget {
  const Productdetail({super.key});

  @override
  State<Productdetail> createState() => _ProductdetailState();
}

class _ProductdetailState extends State<Productdetail> {
  int quantity = 2;
  bool isFavorited = true;

  // Topping selection state
  final Map<String, bool> _toppingSelected = {
    'Olives': true,
    'Cheese': false,
    'Mushroom': false,
  };

  final double basePrice = 15.30;
  final double toppingPrice = 3.52; // per topping

  double get totalPrice {
    int toppingsCount = _toppingSelected.values.where((v) => v).length;
    return (basePrice + toppingsCount * toppingPrice) * quantity;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Stack(
        children: [
          // Background App Bar area (simulating the app behind the modal)
          Container(
            color: const Color(0xFFF5F5F5),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.menu, color: Colors.black87),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Deliver to',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.black54,
                              ),
                            ),
                            Icon(Icons.keyboard_arrow_down,
                                size: 16, color: Colors.black54),
                          ],
                        ),
                        const Text(
                          '207, Medine...',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundImage: const AssetImage(
                            'assets/images/Profile.png',
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            width: 16,
                            height: 16,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFF6B35),
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Text(
                                '2',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 9,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Bottom Sheet Modal
          DraggableScrollableSheet(
            initialChildSize: 0.88,
            minChildSize: 0.88,
            maxChildSize: 0.97,
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20,
                      offset: Offset(0, -4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        controller: scrollController,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Image section with close & heart buttons
                            Stack(
                              children: [
                                // Food image
                                ClipRRect(
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(28)),
                                  child: SizedBox(
                                    height: 240,
                                    width: double.infinity,
                                    child: Image.asset(
                                      'assets/images/35106 1.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                                // Close button
                                Positioned(
                                  top: 16,
                                  left: 16,
                                  child: GestureDetector(
                                    onTap: () => Navigator.of(context).pop(),
                                    child: Container(
                                      width: 38,
                                      height: 38,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 8,
                                          ),
                                        ],
                                      ),
                                      child: const Icon(Icons.close,
                                          size: 18, color: Colors.black87),
                                    ),
                                  ),
                                ),
                                // Favorite button
                                Positioned(
                                  top: 16,
                                  right: 16,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isFavorited = !isFavorited;
                                      });
                                    },
                                    child: Container(
                                      width: 38,
                                      height: 38,
                                      decoration: BoxDecoration(
                                        color: isFavorited
                                            ? const Color(0xFFFF6B6B)
                                            : Colors.white,
                                        shape: BoxShape.circle,
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.black12,
                                            blurRadius: 8,
                                          ),
                                        ],
                                      ),
                                      child: Icon(
                                        isFavorited
                                            ? Icons.favorite
                                            : Icons.favorite_border,
                                        size: 18,
                                        color: isFavorited
                                            ? Colors.white
                                            : Colors.black54,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            // Details section
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Title + Price Row
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Expanded(
                                        child: Text(
                                          'Spaghetti with\nshrimp and basil',
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xFF1A1A1A),
                                            height: 1.2,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        '\$15.30',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w800,
                                          color: Color(0xFFFF6B35),
                                        ),
                                      ),
                                    ],
                                  ),

                                  const SizedBox(height: 12),

                                  // Delivery info row
                                  Row(
                                    children: [
                                      // Free delivery
                                      Row(
                                        children: const [
                                          Icon(Icons.delivery_dining,
                                              size: 16,
                                              color: Color(0xFFFF6B35)),
                                          SizedBox(width: 4),
                                          Text(
                                            'Free delivery',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(width: 16),
                                      // Time
                                      Row(
                                        children: const [
                                          Icon(Icons.local_fire_department,
                                              size: 16,
                                              color: Color(0xFFFF6B35)),
                                          SizedBox(width: 4),
                                          Text(
                                            '45 mins',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      // Rating
                                      Row(
                                        children: const [
                                          Icon(Icons.star,
                                              size: 16,
                                              color: Color(0xFFFFC107)),
                                          SizedBox(width: 4),
                                          Text(
                                            '4.5',
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w700,
                                              color: Color(0xFF1A1A1A),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  const SizedBox(height: 14),

                                  // Description
                                  const Text(
                                    'Succulent butter and garlic infused shrimp sizzling in a flavorful cream sauce, tossed with perfectly cooked pasta.',
                                    style: TextStyle(
                                      fontSize: 13.5,
                                      color: Colors.black54,
                                      height: 1.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 24),

                            // Toppings Section
                            Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0xFF1E1E2E),
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(28)),
                              ),
                              padding: const EdgeInsets.fromLTRB(20, 24, 20, 100),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Toping for you',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  _buildToppingItem(
                                    label: 'Olives',
                                    emoji: '🫒',
                                    emojiColor: const Color(0xFF8B9E3A),
                                    key: 'Olives',
                                  ),
                                  const Divider(
                                      color: Colors.white10, height: 1),
                                  _buildToppingItem(
                                    label: 'Cheese',
                                    emoji: '🧀',
                                    emojiColor: const Color(0xFFF5C542),
                                    key: 'Cheese',
                                  ),
                                  const Divider(
                                      color: Colors.white10, height: 1),
                                  _buildToppingItem(
                                    label: 'Mushroom',
                                    emoji: '🍄',
                                    emojiColor: const Color(0xFF9E7B5A),
                                    key: 'Mushroom',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Bottom Add to Basket Bar
                    _buildBottomBar(),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildToppingItem({
    required String label,
    required String emoji,
    required Color emojiColor,
    required String key,
  }) {
    final bool selected = _toppingSelected[key] ?? false;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _toppingSelected[key] = !selected;
          });
        },
        child: Row(
          children: [
            // Emoji circle
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: emojiColor.withValues(alpha: 0.18),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  emoji,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
            const SizedBox(width: 14),
            Text(
              label,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const Spacer(),
            // Toggle circle
            AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selected ? const Color(0xFFFF6B35) : Colors.transparent,
                border: Border.all(
                  color: selected
                      ? const Color(0xFFFF6B35)
                      : Colors.white24,
                  width: 2,
                ),
              ),
              child: selected
                  ? const Icon(Icons.check, size: 16, color: Colors.white)
                  : null,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      color: const Color(0xFF1E1E2E),
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        bottom: MediaQuery.of(context).padding.bottom + 16,
        top: 12,
      ),
      child: Row(
        children: [
          // Quantity controls
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  if (quantity > 1) {
                    setState(() => quantity--);
                  }
                },
                child: Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.remove,
                      color: Colors.white, size: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Text(
                  '$quantity',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() => quantity++);
                },
                child: Container(
                  width: 34,
                  height: 34,
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.add,
                      color: Colors.white, size: 18),
                ),
              ),
            ],
          ),

          const SizedBox(width: 16),

          // Add to basket button
          Expanded(
            child: GestureDetector(
              onTap: () {
                // Handle add to basket
              },
              child: Container(
                height: 52,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF6B35),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add $quantity to basket',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '\$${totalPrice.toStringAsFixed(2)}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}