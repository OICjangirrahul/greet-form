import 'post.dart';

class PostOperations {
  PostOperations._init() {}
  static List<Post> getPost() {
    return [
      Post(
          'https://www.datocms-assets.com/7756/1602616833-untitled-design-2020-10-14t032023-706.png',
          'Meeting',
          'Tech Meeting',
          '10:30'),
      Post(
          'https://s3.amazonaws.com/talkstar-photos/uploads/c0138519-79b9-4274-818c-6fe232df6fd3/JonnySun_2019-embed.jpg',
          'Ted Event',
          '2020',
          '11:30'),
      Post(
          'https://s3.amazonaws.com/talkstar-photos/uploads/7adc2250-de27-4116-b4ea-6fb4637ca98a/LeraBoroditsky_2017W-embed.jpg',
          'Ted Event',
          '2021',
          '12:00'),
      Post(
          'https://pi.tedcdn.com/r/talkstar-photos.s3.amazonaws.com/uploads/e2ec8940-761c-4cad-97b8-c686d908082e/JasmineCrowe_2019W-embed.jpg',
          'Ted Event',
          '2022',
          '10:00')
    ];
  }
}
