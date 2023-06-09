// ignore_for_file: always_use_package_imports

import 'package:beamer/beamer.dart';
import 'package:flutter/widgets.dart';

import '../../../example/presentation/pages/example_page.dart';
import '../../../example/presentation/pages/form_example_page.dart';
import '../../../example/presentation/pages/pagination_example_page.dart';
import '../../../example/presentation/pages/pagination_stream_example_page.dart';

class BeamerLocations extends BeamLocation<BeamState> {
  BeamerLocations(RouteInformation routeInformation) : super(routeInformation);

  @override
  List<Pattern> get pathPatterns => [
        ExamplePage.routeName,
        ExampleSimplePage.routeName,
        ExamplePage3.routeName,
        FormExamplePage.routeName,
        PaginationStreamExamplePage.routeName,
        PaginationExamplePage.routeName,
      ];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
        key: ValueKey('examplePage'),
        title: 'Example',
        child: ExamplePage(),
      ),
      if (state.uri.pathSegments.contains('simple-page'))
        const BeamPage(
          key: ValueKey('exampleSimplePage'),
          title: 'ExampleSimplePage',
          child: ExampleSimplePage(),
        ),
      if (state.uri.pathSegments.contains('page3'))
        const BeamPage(
          key: ValueKey('examplePage3'),
          title: 'ExamplePage3',
          child: ExamplePage3(),
        ),
      if (state.uri.pathSegments.contains('form-example-page'))
        BeamPage(
          key: const ValueKey('form-example-page'),
          title: 'FormExamplePage',
          child: FormExamplePage(),
        ),
      if (state.uri.pathSegments.contains('pagination-stream-example-page'))
        const BeamPage(
          key: ValueKey('pagination_stream_example_page'),
          title: 'PaginationStreamExamplePage',
          child: PaginationStreamExamplePage(),
        ),
      if (state.uri.pathSegments.contains('pagination-example-page'))
        const BeamPage(
          key: ValueKey('pagination_example_page'),
          title: 'PaginationExamplePage',
          child: PaginationExamplePage(),
        ),
    ];
  }
}
