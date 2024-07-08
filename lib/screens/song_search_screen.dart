import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:swift_song_finder/bloc/song/song_bloc.dart';
import 'package:swift_song_finder/bloc/song/song_event.dart';
import 'package:swift_song_finder/bloc/song/song_state.dart';
import 'package:swift_song_finder/constants/sorting.dart';
import 'package:swift_song_finder/models/get_itunes_song_list_response.dart';
import 'package:swift_song_finder/widgets/empty_view.dart';
import 'package:swift_song_finder/widgets/search_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class SongSearchScreen extends HookWidget {
  const SongSearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sortingState = useState<Sorting>(Sorting.byTrackName);
    final activeSongState = useState<SongData?>(null);
    final audioPlayer = useMemoized(() => AudioPlayer());
    final scrollController = useScrollController();

    useEffect(() {
      return audioPlayer.dispose;
    }, []);

    useEffect(
      () {
        if (scrollController.hasClients) {
          scrollController.animateTo(
            0.0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        }
        return null;
      },
      [sortingState.value],
    );

    Future<void> handleSongTap(String link) async {
      final url = Uri.tryParse(link);
      if (url != null && await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    Future<void> handlePlayPause(SongData song, bool isPlaying) async {
      await audioPlayer.stop();
      if (!isPlaying) {
        final result = await audioPlayer.play(song.previewUrl ?? '');
        if (result == 1) {
          activeSongState.value = song;
        } else {
          throw 'Failed to play preview for ${song.trackName}';
        }
      } else {
        activeSongState.value = null;
      }
    }

    return Column(
      children: [
        SearchBox(
          labelText: 'Search by Song or Album',
          onChanged: (value) {
            context.read<SongBloc>().add(SearchSongs(value));
          },
        ),
        Row(
          children: [
            for (final item in Sorting.values)
              SortingRadioItem(
                item: item,
                selectedItem: sortingState.value,
                onChanged: (value) {
                  sortingState.value = value;
                  context.read<SongBloc>().add(SortSongs(value));
                },
              ),
          ],
        ),
        Expanded(
          child: BlocBuilder<SongBloc, SongState>(
            builder: (context, state) {
              if (state is SongLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is SongError) {
                return EmptyView(
                  text: state.message,
                );
              } else if (state is SongNotFound) {
                return const EmptyView(
                  text: 'No results found',
                );
              } else if (state is SongLoaded) {
                // display the song list
                return ListView.builder(
                  controller: scrollController,
                  itemCount: state.songs.length,
                  itemBuilder: (context, index) {
                    final song = state.songs[index];
                    final isPlaying = song == activeSongState.value;
                    return SongListItem(
                      song: song,
                      onTap: () => handleSongTap(song.trackViewUrl ?? ''),
                      onPlay: () => handlePlayPause(song, isPlaying),
                      isPlaying: isPlaying,
                    );
                  },
                );
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ),
      ],
    );
  }
}

class SongListItem extends StatelessWidget {
  const SongListItem({
    super.key,
    required this.song,
    required this.isPlaying,
    required this.onTap,
    required this.onPlay,
  });

  final SongData song;
  final bool isPlaying;

  final void Function() onTap;
  final void Function() onPlay;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(song.artworkUrl100 ?? ''),
      title: Text(song.trackName ?? ''),
      subtitle: Text(song.collectionName ?? ''),
      onTap: onTap,
      trailing: IconButton(
        icon: isPlaying
            ? const Icon(Icons.stop_circle_rounded)
            : const Icon(Icons.play_circle_fill_rounded),
        onPressed: onPlay,
      ),
    );
  }
}

class SortingRadioItem extends StatelessWidget {
  const SortingRadioItem({
    super.key,
    required this.item,
    required this.selectedItem,
    required this.onChanged,
  });

  final Sorting item;
  final Sorting selectedItem;
  final void Function(Sorting) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio(
          value: item,
          groupValue: selectedItem,
          onChanged: (value) {
            if (value != null) {
              onChanged(value);
            }
          },
        ),
        Text(
          item.title,
        ),
      ],
    );
  }
}
