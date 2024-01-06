import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:widgets_exemplo/pages/botoes_rotacao_texto/botoes_rotacao_texto_page.dart';
import 'package:widgets_exemplo/pages/container/container_page.dart';
import 'package:widgets_exemplo/pages/dialogs/dialogs_page.dart';
import 'package:widgets_exemplo/pages/forms/forms_page.dart';
import 'package:widgets_exemplo/pages/home/home_page.dart';
import 'package:widgets_exemplo/pages/layout_builder/layout_builder_page.dart';
import 'package:widgets_exemplo/pages/media_query/media_query_page.dart';
import 'package:widgets_exemplo/pages/rows_columns/rows_column_page.dart';
import 'package:widgets_exemplo/pages/scrolls/listview_page.dart';
import 'package:widgets_exemplo/pages/scrolls/singlechildscrollciew_page.dart';
import 'package:widgets_exemplo/pages/snackbar/snackbar_page.dart';

void main() {
  runApp(
    DevicePreview(
      //package que permite testar o aplicativo em varios tamanhos de tela diferentes
      enabled: false, //!kReleaseMode,
      builder: (_) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets Example',
      theme: ThemeData(
        primaryColor: Colors.amber,
        primarySwatch: Colors.blue,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/rows_columns': (_) => const RowsColumnPage(),
        '/media_query': (_) => const MediaQueryPage(),
        '/layout_builder': (_) => const LayoutBuilderPage(),
        '/botoes_rotacao_texto': (_) => const BotoesRotacaoTextoPage(),
        '/scrolls/single_child': (_) => const SinglechildscrollciewPage(),
        '/scrolls/list_view': (_) => const ListviewPage(),
        '/dialogs': (_) => const DialogsPage(),
        '/snackBars': (_) => const SnackbarPage(),
        '/forms': (_) => const FormsPage(),
      },
    );
  }
}
