import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:riide/feature/screen/cubit/get_vertex_cubit.dart';

class VerteseScreen extends StatelessWidget {
  const VerteseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetVertexCubit()..getVertex(),
      child: BlocConsumer<GetVertexCubit, GetVertexState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold();
        },
      ),
    );
  }
}
