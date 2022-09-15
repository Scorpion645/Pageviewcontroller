class AppBanner {
  final int ID;
  final String title;
  final String thumbnailUrl;

  AppBanner(this.ID, this.title, this.thumbnailUrl);
}

List<AppBanner> appBannerList = [
  AppBanner(1, 'Title1', 'Https://Picsum.photos/id/1/400/300'),
  AppBanner(2, 'Title2', 'Https://Picsum.photos/id/2/400/300'),
  AppBanner(3, 'Title3', 'Https://Picsum.photos/id/3/400/300'),
  AppBanner(4, 'Title4', 'Https://Picsum.photos/id/4/400/300'),
];
