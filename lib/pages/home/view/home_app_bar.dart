import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodbank/pages/home/bloc/bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<HomeBloc>();
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(
                    30,
                  ),
                ),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 237, 172, 81),
                    Color.fromARGB(255, 242, 159, 159),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            leadingWidth: 30,
            toolbarHeight: 180,
            bottom: TabBar(
              onTap: (index) => bloc.add(TabPressed(index)),
              tabs: [
                Tab(
                  icon: const Icon(Icons.login),
                  text: AppLocalizations.of(context)?.login ?? '',
                ),
                Tab(
                  icon: const FaIcon(FontAwesomeIcons.userPlus),
                  text: AppLocalizations.of(context)?.signin ?? '',
                ),
              ],
            ),
            title: Column(
              children: [
                Center(
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
