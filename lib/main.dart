import 'package:extremebreaker1/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Extremebreaker1',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Extremebreaker1'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      debugPrint("$_counter");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 200, 184, 244),
        child: ListView(
          children: [
           Container(
            padding: EdgeInsets.all(50),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("✨ Partnered Twitch Streamer"),
                    SizedBox(height: 20,),
                    Text("Hello, I'm extremebreaker1"),
                    SizedBox(height: 20,),
                    SizedBox(
                      width: 600,
                      child: Text("A partnered Twitch streamer and variety gaming content creator. I love creating high-energy, interactive content filled with funny moments and \"professional\" gameplay, making every stream and video an experience for my community. I'm always excited to collaborate with brands in creative ways that bring value to my audience while keeping things fun and authentic.",
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(width: 600,
                    child: Row(
                      children: [
                        ElevatedButton(onPressed: (){}, child: Text("Watch Live")),
                        SizedBox(width: 20,),
                        ElevatedButton(onPressed: (){}, child: Text("Support Me")),
                        SizedBox(width: 20,),
                        ElevatedButton(onPressed: (){}, child: Text("Collaborate")),
                      ],
                    ),)
                  ],
                ),
                SizedBox(width: 250,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(350),
                    border: Border.all(color:Colors.red)
                  ),
                  child: ClipOval(
                    clipBehavior: Clip.antiAlias,
                    child: Image.network(
                      "https://static-cdn.jtvnw.net/jtv_user_pictures/c1ab3a94-1208-4690-95b9-beb3da056ad1-profile_image-70x70.png",
                      fit: BoxFit.cover,
                      height: 350,
                      width: 350,
                      ),
                  ))

              ],
            ),
           ), 
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
