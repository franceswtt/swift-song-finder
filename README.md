# Swift Song Finder

Swift Song Finder is a Flutter application that allows users to search and discover songs by Taylor Swift using the iTunes API.

## Features

- Fetches a list of Taylor Swift songs from iTunes.
- Allows users to search songs by song name or album name.
- Sorts songs alphabetically by track name or album name.
- Provides previews and direct links to iTunes for each song.

## Technologies Used

- Flutter
- Bloc State Management
- iTunes API
[(Full API documentation)](https://developer.apple.com/library/archive/documentation/AudioVideo/Conceptual/iTuneSearchAPI/index.html)

## Setup Instructions

1. Clone the repository from GitHub:

    ```bash
    git clone https://github.com/your-username/swift_song_finder.git
    ```

2. Navigate into the project directory:

    ```bash
    cd swift_song_finder
    ```

3. Install dependencies:

    ```bash
    flutter pub get
    ```

4. Run the app:

    ```bash
    flutter run
    ```

## Running Tests

Unit tests are included for the following components:

- SongBloc: Tests for fetching, searching, and sorting songs.
- ItunesService: Tests for API requests and response handling.
To run tests:

```bash
flutter test
```

## Example Structure

Here's a simplified directory structure to help you locate relevant files for setup:

flutter_project/
├── lib/
│   ├── models/
│   │   └── get_itunes_song_list_response.dart   // Contains SongData model
│   ├── services/
│   │   └── itunes_service.dart   // API service integration
│   ├── blocs/
│   │   └── song/
│   │       ├── song_bloc.dart   // BLoC implementation
│   │       ├── song_event.dart  // BLoC events
│   │       └── song_state.dart  // BLoC states
│   ├── screens/
│   │   └── song_search_screen.dart   // Main app screen
│   └── widgets/
│       └── search_bar.dart   // Reusable widget
├── test/
│   └── itunes_service_test.dart   // Unit tests for ItunesService
├── resources/  // App resources
├── pubspec.yaml   // Dependency and configuration file
└── main.dart   // Entry point of the application
