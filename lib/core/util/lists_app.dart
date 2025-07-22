import 'exports_app.dart';

class DataGroupApp {
  static const List<String> buttonsDataGroup = [
    'All',
    'software solution',
    'IOT Solution',
    'Embedded Solution',
  ];
  static const List<Widget> screens = [
    HomePage(),
    CartScreen(),
    FavouriteScreen(),
  ];
  static const List<Map<String, dynamic>> sessionsNames = [
    {'label': 'Home', 'icon': Icons.home},
    {'label': 'Cart', 'icon': Icons.shopping_cart},
    {'label': 'Wishlist', 'icon': Icons.favorite},
  ];
}

List<Map<String, dynamic>> favouriteProducts =
    GettingProductsGroup(groupType: 'isFavourite').getProductsGroup();

List<Map<String, dynamic>> allCartProducts =
    GettingProductsGroup(groupType: 'inCart').getProductsGroup();
List<Map<String, dynamic>> viewedProducts =
    GettingProductsGroup(groupType: 'isViewed').getProductsGroup();

List<Map<String, dynamic>> products = [
  // === Software Solution ===
  {
    'image': 'assets/images/placeholder.png',
    'title': 'All-in-One ERP Platform',
    'description':
        'An all-in-one ERP solution to manage finance, sales, and operations.',
    'price': 199.99,
    'initialPrice': 199.99,
    'type': 'software solution',
    'quantity': 10,
    'isFavourite': false,
    'isAvailable': true,
    'isViewed': false,
    'inCart': false,
    'count': 0,
  },
  {
    'image': 'assets/images/data1.jpg',
    'title': 'Task & Reminder Scheduler',
    'description':
        'Plan your day efficiently with task tracking and reminders.',
    'price': 149.50,
    'initialPrice': 149.50,
    'type': 'software solution',
    'quantity': 7,
    'isFavourite': true,
    'isAvailable': true,
    'isViewed': true,
    'inCart': false,
    'count': 0,
  },
  {
    'image': 'assets/images/data2.jpg',
    'title': 'Retail & Inventory POS',
    'description':
        'Streamlined POS software for sales, inventory, and reports.',
    'price': 249.00,
    'initialPrice': 249.00,
    'type': 'software solution',
    'quantity': 5,
    'isFavourite': false,
    'isAvailable': false,
    'isViewed': true,
    'inCart': false,
    'count': 0,
  },

  // === IoT Solution ===
  {
    'image': 'assets/images/placeholder.png',
    'title': 'Remote Light Automation',
    'description':
        'Control your home lighting remotely and save energy easily.',
    'price': 299.99,
    'initialPrice': 299.99,
    'type': 'iot solution',
    'quantity': 6,
    'isFavourite': false,
    'isAvailable': true,
    'isViewed': false,
    'inCart': true,
    'count': 1,
  },
  {
    'image': 'assets/images/z_garden.png',
    'title': 'Real-Time Temp Tracker',
    'description':
        'Track temperature in real-time for farms or storage facilities.',
    'price': 259.50,
    'initialPrice': 259.50,
    'type': 'iot solution',
    'quantity': 5,
    'isFavourite': true,
    'isAvailable': true,
    'isViewed': true,
    'inCart': true,
    'count': 1,
  },
  {
    'image': 'assets/images/z_switch.png',
    'title': 'Smart Door Alert Sensor',
    'description':
        'Detects door movement instantly and sends real-time alerts.',
    'price': 279.00,
    'initialPrice': 279.00,
    'type': 'iot solution',
    'quantity': 4,
    'isFavourite': false,
    'isAvailable': false,
    'isViewed': true,
    'inCart': false,
    'count': 0,
  },

  // === Embedded Solution ===
  {
    'image': 'assets/images/z_guard.png',
    'title': 'Industrial Control Unit',
    'description':
        'Programmable controller for industrial and smart automation.',
    'price': 349.99,
    'initialPrice': 349.99,
    'type': 'embedded solution',
    'quantity': 5,
    'isFavourite': true,
    'isAvailable': true,
    'isViewed': false,
    'inCart': false,
    'count': 0,
  },
  {
    'image': 'assets/images/raspberry_pi.png',
    'title': 'Smart Robotics Kit (Raspberry Pi)',
    'description': 'Build and code smart robots using Raspberry Pi technology.',
    'price': 319.50,
    'initialPrice': 319.50,
    'type': 'embedded solution',
    'quantity': 4,
    'isFavourite': false,
    'isAvailable': true,
    'isViewed': true,
    'inCart': false,
    'count': 0,
  },
  {
    'image': 'assets/images/beagleboard.png',
    'title': 'Vehicle Automation Controller',
    'description':
        'Advanced controller for smart vehicle systems and automation.',
    'price': 299.00,
    'initialPrice': 299.00,
    'type': 'embedded solution',
    'quantity': 6,
    'isFavourite': false,
    'isAvailable': false,
    'isViewed': true,
    'inCart': false,
    'count': 0,
  },
];
