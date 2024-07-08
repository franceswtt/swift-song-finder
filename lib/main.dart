import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:swift_song_finder/bloc/song/song_bloc.dart';
import 'package:swift_song_finder/bloc/song/song_event.dart';
import 'package:swift_song_finder/screens/song_search_screen.dart';
import 'package:swift_song_finder/screens/splash_screen.dart';
import 'package:swift_song_finder/services/itunes_service.dart';

void main() {
  runApp(
    const SwiftSongFinderApp(),
  );
}

class SwiftSongFinderApp extends StatelessWidget {
  const SwiftSongFinderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.system,
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swift Song Finder'),
        scrolledUnderElevation: 0.0,
      ),
      body: BlocProvider(
        create: (_) =>
            SongBloc(itunesService: ItunesService())..add(FetchSongs()),
        child: const SongSearchScreen(),
      ),
    );
  }
}
