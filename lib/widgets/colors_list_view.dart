import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;

  final List<Color> colors = const [
    Color(0xFF4C2885),
    Color(0xFF0E5470),
    Color(0xFF7C1A40),
    Color(0xFF7C4A05),
    Color(0xFF2A3580),
    Color(0xFF0E5C3A),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                });
              },
              child: Center(
                child: ColorItem(
                  color: colors[index],
                  isActive: currentIndex == index,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
