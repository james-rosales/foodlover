import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodbank/pages/home/bloc/bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

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
                    Colors.white,
                    Color.fromARGB(255, 197, 197, 197),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            automaticallyImplyLeading: false,
            toolbarHeight: 250,
            bottom: TabBar(
              onTap: (index) => bloc.add(TabPressed(index)),
              tabs: [
                Tab(
                  text: AppLocalizations.of(context)?.login ?? '',
                ),
                Tab(
                  text: AppLocalizations.of(context)?.signin ?? '',
                ),
              ],
            ),
            title: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () => context.push('/welcomepage'),
                    icon: const Icon(
                      Icons.chevron_left,
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    width: 150,
                    height: 160,
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
