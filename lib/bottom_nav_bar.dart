import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plantapp/src/view/cart_view.dart';
import 'package:plantapp/src/view/favourite_view.dart';
import 'package:plantapp/src/view/home_page_view.dart';
import 'src/constants/app_theme.dart';
import 'src/view/Profile_screen.dart';

final currentIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class CustombottomNavBar extends ConsumerWidget {
  const CustombottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentIndexProvider);
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: primaryColor,
      unselectedItemColor: headingColor,
      elevation: 0,
      onTap: (value) {
        ref.read(currentIndexProvider.notifier).update((state) => value);
        if (value == 0) {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const AppHomePage()));
        }
        if (value == 1) {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => const CartView()));
        }
        if (value == 2) {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const FavouriteScreen()));
        }
        if (value == 3) {
          Navigator.push(context,
              MaterialPageRoute(builder: (_) => const ProfileScreen()));
        }
      },
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Icon(Icons.home_filled, size: 30),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Icon(Icons.shopping_cart_sharp),
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Icon(CupertinoIcons.heart_fill),
          ),
          label: 'Favourite',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 4),
            child: Icon(CupertinoIcons.person_fill),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
