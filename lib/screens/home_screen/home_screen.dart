import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jy_uk/bloc/theme_cubit.dart';
import 'package:jy_uk/screens/home_screen/bloc/page_bloc.dart';
import 'package:jy_uk/screens/home_screen/views/events_view.dart';
import 'package:jy_uk/screens/home_screen/views/intercession_view.dart';
import 'package:jy_uk/screens/home_screen/views/profile_view.dart';
import 'package:jy_uk/views/bottom_navigation_view.dart';
import 'package:jy_uk/screens/home_screen/views/community_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PageBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Jesus Youth UK"),
          actions: [
            TextButton(
                onPressed: () {
                  context.read<ThemeCubit>().toggleTheme();
                },
                child: const Icon(Icons.brightness_4_outlined))
          ],
        ),
        body: BlocBuilder<PageBloc, int>(builder: (context, index) {
          return Container(
              child: (index == 0)
                  ? const CommunityView()
                  : (index == 1)
                      ? const EventsView()
                      : (index == 2)
                          ? const IntercessionView()
                          : const ProfileView());
        }),
        bottomNavigationBar: const BottomNavigationView(),
      ),
    );
  }
}
