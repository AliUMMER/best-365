import 'package:best_365/bloc/best_bloc_bloc.dart';
import 'package:best_365/model_class/best_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Best365Model data;
  TextEditingController controller = TextEditingController();

  void initState() {
    BlocProvider.of<BestBlocBloc>(context).add(fetchbest365());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'best365',
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          BlocBuilder<BestBlocBloc, best365State>(
            builder: (context, state) {
              if (state is best365BlocLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is best365locError) {
                return const Center(child: Text('Something went wrong!'));
              }
              if (state is best365locLoaded) {
                data = BlocProvider.of<BestBlocBloc>(context).best365model;
                if (data.results == null || data.results!.isEmpty) {
                  return const Center(child: Text('No data available.'));
                }
                return Expanded(
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      final item =
                          data.results![index]; // Fixed access to results
                      return Column(
                        children: [
                          const SizedBox(width: 10),
                          Text(
                            item.home?.name ?? 'No Title',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            item.time ?? 'No Time',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            item.league.toString() ?? 'No Status',
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemCount: data.results!.length,
                  ),
                );
              }
              return const SizedBox(); // Fallback case
            },
          ),
        ],
      ),
    );
  }
}
