import 'package:flutter/material.dart';
import 'package:flutter_material_symbols/flutter_material_symbols.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material Symbols',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
        fontFamily: 'Material Symbols',
      ),
      home: const MyHomePage(
        title: 'Material Symbols'
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar.large(
            title: const Text('Material Symbols'),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(
            ),
            sliver: SliverToBoxAdapter(
              child: Card(
                margin: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 12,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          'For a full list of all available symbols, see fonts.google.com',
                          style: Theme.of(context).textTheme.bodyMedium,
                          maxLines: 3,
                        )
                      ),
                      SizedBox.square(
                        dimension: 40,
                        child: IconButton(
                          onPressed: () {
                            launchUrl(Uri.parse('https://fonts.google.com/icons?icon.set=Material+Symbols'));
                          },
                          icon: const Icon(MaterialSymbols.open_in_new),
                          style: IconButton.styleFrom(
                            foregroundColor: colors.onSecondaryContainer,
                            backgroundColor: colors.secondaryContainer,
                            disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
                            hoverColor: colors.onSecondaryContainer.withOpacity(0.08),
                            focusColor: colors.onSecondaryContainer.withOpacity(0.12),
                            highlightColor: colors.onSecondaryContainer.withOpacity(0.12),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ),
            ),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Center(
                child: Icon(
                  MaterialSymbols.all.values.elementAt(index),
                  size: 40,
                ),
              ),
              childCount: MaterialSymbols.all.length,
            ),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
            )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
          );
        },
        tooltip: 'Scroll to top',
        child: const Icon(MaterialSymbols.arrow_upward),
      ),
    );
  }

}
