import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PlaylistScreen extends StatelessWidget {
  final String mood;

  PlaylistScreen({required this.mood});

  // Mood-to-YouTube playlists map
  final Map<String, List<Map<String, String>>> moodPlaylists = {
    'Happy': [
      {
        'title': 'Happy – Pharrell Williams',
        'url': 'https://www.youtube.com/watch?v=ZbZSe6N_BXs',
      },
      {
        'title': 'Can\'t Stop the Feeling! – Justin Timberlake',
        'url': 'https://www.youtube.com/watch?v=ru0K8uYEZWw',
      },
      {
        'title': 'Good Time – Owl City & Carly Rae Jepsen',
        'url': 'https://www.youtube.com/watch?v=H7HmzwI67ec',
      },
      {
        'title': 'Best Day of My Life – American Authors',
        'url': 'https://www.youtube.com/watch?v=Y66j_BUCBMY',
      },
      {
        'title': 'Walking on Sunshine – Katrina & The Waves',
        'url': 'https://www.youtube.com/watch?v=iPUmE-tne5U',
      },
      {
        'title': 'I Gotta Feeling – The Black Eyed Peas',
        'url': 'https://www.youtube.com/watch?v=uSD4vsh1zDA',
      },
      {
        'title': 'Shake It Off – Taylor Swift',
        'url': 'https://www.youtube.com/watch?v=nfWlot6h_JM',
      },
      {
        'title': 'Firework – Katy Perry',
        'url': 'https://www.youtube.com/watch?v=QGJuMBdaqIw',
      },
      {
        'title': 'Happy Now – Kygo & Sandro Cavazza',
        'url': 'https://www.youtube.com/watch?v=dJduFZsDZ8M',
      },
      {
        'title': 'Good as Hell – Lizzo',
        'url': 'https://www.youtube.com/watch?v=vuq-VAiW9kw',
      },
    ],
    'Sad': [
      {
        'title': 'Someone Like You – Adele',
        'url': 'https://www.youtube.com/watch?v=hLQl3WQQoQ0',
      },
      {
        'title': 'Let Her Go – Passenger',
        'url': 'https://www.youtube.com/watch?v=RBumgq5yVrA',
      },
      {
        'title': 'All I Want – Kodaline',
        'url': 'https://www.youtube.com/watch?v=mtf7hC17IBM',
      },
      {
        'title': 'The Scientist – Coldplay',
        'url': 'https://www.youtube.com/watch?v=RB-RcX5DS5A',
      },
      {
        'title': 'Happier – Ed Sheeran',
        'url': 'https://www.youtube.com/watch?v=iWZmdoY1aTE',
      },
      {
        'title': 'When I Was Your Man – Bruno Mars',
        'url': 'https://www.youtube.com/watch?v=ekzHIouo8Q4',
      },
      {
        'title': 'Say Something – A Great Big World ft. Christina Aguilera',
        'url': 'https://www.youtube.com/watch?v=-2U0Ivkn2Ds',
      },
      {
        'title': 'Jealous – Labrinth',
        'url': 'https://www.youtube.com/watch?v=50VWOBi0VFs',
      },
      {
        'title': 'Lose You to Love Me – Selena Gomez',
        'url': 'https://www.youtube.com/watch?v=zlJDTxahav0',
      },
      {
        'title': 'Youth – Daughter',
        'url': 'https://www.youtube.com/watch?v=VEpMj-tqixs',
      },
    ],
    'Angry': [
      {
        'title': 'In the End – Linkin Park',
        'url': 'https://www.youtube.com/watch?v=eVTXPUF4Oz4',
      },
      {
        'title': 'Stronger – Kanye West',
        'url': 'https://www.youtube.com/watch?v=PsO6ZnUZI0g',
      },
      {
        'title': 'Break Stuff – Limp Bizkit',
        'url': 'https://www.youtube.com/watch?v=ZpUYjpKg9KY',
      },
      {
        'title': 'Bodies – Drowning Pool',
        'url': 'https://www.youtube.com/watch?v=04F4xlWSFh0',
      },
      {
        'title': 'Killing in the Name – Rage Against the Machine',
        'url': 'https://www.youtube.com/watch?v=bWXazVhlyxQ',
      },
      {
        'title': 'Smells Like Teen Spirit – Nirvana',
        'url': 'https://www.youtube.com/watch?v=hTWKbfoikeg',
      },
      {
        'title': 'Papercut – Linkin Park',
        'url': 'https://www.youtube.com/watch?v=vjVkXlxsO8Q',
      },
      {
        'title': 'Numb – Linkin Park',
        'url': 'https://www.youtube.com/watch?v=kXYiU_JCYtU',
      },
      {
        'title': 'Headstrong – Trapt',
        'url': 'https://www.youtube.com/watch?v=HTvu1Yr3Ohk',
      },
      {
        'title': 'Duality – Slipknot',
        'url': 'https://www.youtube.com/watch?v=6fVE8kSM43I',
      },
    ],
    'Tired': [
      {
        'title': 'Weightless – Marconi Union',
        'url': 'https://www.youtube.com/watch?v=UfcAVejslrU',
      },
      {
        'title': 'Fix You – Coldplay',
        'url': 'https://www.youtube.com/watch?v=k4V3Mo61fJM',
      },
      {
        'title': 'Let It Be – The Beatles',
        'url': 'https://www.youtube.com/watch?v=QDYfEBY9NM4',
      },
      {
        'title': 'Bloom – The Paper Kites',
        'url': 'https://www.youtube.com/watch?v=8inJtTG_DuU',
      },
      {
        'title': 'Hallelujah – Jeff Buckley',
        'url': 'https://www.youtube.com/watch?v=y8AWFf7EAc4',
      },
      {
        'title': 'Skinny Love – Bon Iver',
        'url': 'https://www.youtube.com/watch?v=ssdgFoHLwnk',
      },
      {
        'title': 'River Flows in You – Yiruma',
        'url': 'https://www.youtube.com/watch?v=7maJOI3QMu0',
      },
      {
        'title': 'The Night We Met – Lord Huron',
        'url': 'https://www.youtube.com/watch?v=KtlgYxa6BMU',
      },
      {
        'title': 'Holocene – Bon Iver',
        'url': 'https://www.youtube.com/watch?v=TWcyIpul8OE',
      },
      {
        'title': 'Asleep – The Smiths',
        'url': 'https://www.youtube.com/watch?v=Vv8Kjz0cwwI',
      },
    ],
    'Chill': [
      {
        'title': 'Chillhop Essentials',
        'url': 'https://www.youtube.com/watch?v=8iU8LPEa4o0',
      },
      {
        'title': 'Lofi Hip Hop Radio',
        'url': 'https://www.youtube.com/watch?v=jfKfPfyJRdk',
      },
      {
        'title': 'Sunset Lover – Petit Biscuit',
        'url': 'https://www.youtube.com/watch?v=4IZgD1rq2w0',
      },
      {
        'title': 'Cold Little Heart – Michael Kiwanuka',
        'url': 'https://www.youtube.com/watch?v=nOubjLM9Cbc',
      },
      {
        'title': 'Weightless – Marconi Union',
        'url': 'https://www.youtube.com/watch?v=UfcAVejslrU',
      },
      {
        'title': 'Night Owl – Galimatias',
        'url': 'https://www.youtube.com/watch?v=7H8IpKmJGvY',
      },
      {
        'title': 'Breeze – Lofi Fruits Music',
        'url': 'https://www.youtube.com/watch?v=wAPCSnAhhC8',
      },
      {
        'title': 'Warm Nights – Phlocalyst & softy',
        'url': 'https://www.youtube.com/watch?v=nm_RtK7bNhk',
      },
      {
        'title': 'Jazzhop Study Music',
        'url': 'https://www.youtube.com/watch?v=Dx5qFachd3A',
      },
      {
        'title': 'Tranquil Beats – Chillhop Music',
        'url': 'https://www.youtube.com/watch?v=acYDxgz3nJM',
      },
    ],
    'Excited': [
      {
        'title': 'Believer – Imagine Dragons',
        'url': 'https://www.youtube.com/watch?v=7wtfhZwyrcc',
      },
      {
        'title': 'Uptown Funk – Bruno Mars',
        'url': 'https://www.youtube.com/watch?v=OPf0YbXqDm0',
      },
      {
        'title': 'On Top of the World – Imagine Dragons',
        'url': 'https://www.youtube.com/watch?v=w5tWYmIOWGk',
      },
      {
        'title': 'Can’t Hold Us – Macklemore & Ryan Lewis',
        'url': 'https://www.youtube.com/watch?v=2zNSgSzhBfM',
      },
      {
        'title': 'Don’t Stop Me Now – Queen',
        'url': 'https://www.youtube.com/watch?v=HgzGwKwLmgM',
      },
      {
        'title': 'Stronger – Britney Spears',
        'url': 'https://www.youtube.com/watch?v=AJWtLf4-WWs',
      },
      {
        'title': 'Good Feeling – Flo Rida',
        'url': 'https://www.youtube.com/watch?v=3OnnDqH6Wj8',
      },
      {
        'title': 'Power – Little Mix',
        'url': 'https://www.youtube.com/watch?v=cOQUe6kzAfU',
      },
      {
        'title': 'Titanium – David Guetta ft. Sia',
        'url': 'https://www.youtube.com/watch?v=JRfuAukYTKg',
      },
      {
        'title': 'Can’t Stop – Red Hot Chili Peppers',
        'url': 'https://www.youtube.com/watch?v=BfOdWSiyWoc',
      },
    ],
  };

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final playlist = moodPlaylists[mood] ?? [];

    return Scaffold(
      appBar: AppBar(title: Text('$mood Playlist')),
      body: ListView.builder(
        itemCount: playlist.length,
        itemBuilder: (context, index) {
          final song = playlist[index];
          return ListTile(
            title: Text(song['title'] ?? ''),
            trailing: Icon(Icons.play_arrow),
            onTap: () => _launchURL(song['url']!),
          );
        },
      ),
    );
  }
}
