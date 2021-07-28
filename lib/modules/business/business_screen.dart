import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/cubit.dart';
import 'package:news_app/cubit/states.dart';
import 'package:news_app/shared/components/components.dart';

class BusinessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context)=>NewsCubit()..getBusiness(),
      child: BlocConsumer<NewsCubit, NewsStates>(

        listener: (context, state) {},
        builder: (context, state) {
          var list = NewsCubit.get(context).business;
          return buildArticle(list,context);
        },
      ),
    );
  }
}
