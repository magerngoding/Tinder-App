import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tinder_app/src/common_widgets/people_love_card.widget.dart';
import 'package:tinder_app/src/features/likes_you/presentation/bloc/explore_people/explore_people_bloc.dart';
import 'package:tinder_app/src/features/likes_you/presentation/bloc/explore_people/people_loved/bloc/people_loved_bloc.dart';
import 'package:tinder_app/src/theme_manager/font_manager.dart';
import 'package:tinder_app/src/theme_manager/style_manager.dart';

class PeopleLoveScreen extends StatefulWidget {
  static const String routeName = '/people-love';
  const PeopleLoveScreen({super.key});

  @override
  State<PeopleLoveScreen> createState() => _PeopleLoveScreenState();
}

class _PeopleLoveScreenState extends State<PeopleLoveScreen> {
  @override
  void initState() {
    super.initState();
    context.read<PeopleLovedBloc>().add(OnPeopleLovedEventCalled());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'People You\nLoved',
          style: getWhiteTextStyle(
            fontWeight: FontWeightManager.semiBold,
            fontSize: FontSizeManager.f20,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          BlocBuilder<PeopleLovedBloc, PeopleLovedState>(
            builder: (context, state) {
              if (state is PeopleLovedLoading) {
                return CircularProgressIndicator();
              }
              if (state is PeopleLovedLoaded) {
                final users = state.userMatch;
                return Expanded(
                  child: ListView.builder(
                    itemCount: users.length,
                    itemBuilder: (context, index) {
                      return PeopleLovedCardWidget();
                    },
                  ),
                );
              }
              return Container();
            },
          ),
        ],
      ),
    );
  }
}
