enum Sorting {
  byTrackName(
    title: 'Sort by Song Name',
  ),
  byAlbumName(
    title: 'Sort by Album Name',
  ),
  ;

  const Sorting({
    required this.title,
  });

  final String title;
}
