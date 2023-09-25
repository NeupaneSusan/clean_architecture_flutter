import 'package:first_clean_atr/injection.dart';
import 'package:first_clean_atr/presentation/states/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/memepage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PageController pageController = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
    final provider = locator<MemeProvider>();
    provider.getNewMemes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TodoList with Clean')),
      body: ChangeNotifierProvider<MemeProvider>(
        create: (context) => locator<MemeProvider>(),
        child: Consumer<MemeProvider>(
          builder: (context, MemeProvider data, child) {
            if (data.isLoading) {
              return const Center(child: CircularProgressIndicator());
            }
            return data.response!.fold(
              (l) {
                return const Text('Error');
              },
              (list) {
                return PageView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: list.length,
                  itemBuilder: (context, idx) {
                    return MemeCard(data: list[idx]);
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
