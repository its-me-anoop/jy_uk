import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jy_uk/bloc/page_bloc.dart';

class BottomNavigationView extends StatelessWidget {
  const BottomNavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PageBloc, int>(builder: (context, index) {
      return BottomNavigationBar(
          currentIndex: index,
          onTap: (pageIndex) {
            switch (pageIndex) {
              // Popular
              case 0:
                context.read<PageBloc>().add(HomePagePressed());
                break;

              // Recent
              case 1:
                context.read<PageBloc>().add(EventPagePressed());
                break;

              case 2:
                context.read<PageBloc>().add(IntercessionPagePressed());
                break;

              case 3:
                context.read<PageBloc>().add(ProfilePagePressed());
                break;
            }
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.now_widgets_outlined), label: 'Community'),
            BottomNavigationBarItem(
                icon: Icon(Icons.celebration_outlined), label: 'Events'),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_people_outlined), label: 'Intercession'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Profile')
          ]);
    });
  }
}
