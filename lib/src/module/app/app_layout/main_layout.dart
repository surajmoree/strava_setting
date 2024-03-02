import 'package:strava_clone/src/boot.dart';

class MainLayout extends StatelessWidget {
  final Widget? drawer;
  final Widget? bootomNavigationBar;
  final List<Widget>? actions;
  final Widget body;

  const MainLayout(
      {Key? key, required this.body, this.bootomNavigationBar, this.drawer, this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(backgroundColor: Color.fromARGB(255, 247, 23, 2), onPressed: (){},child: Icon(Icons.add)),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 228, 33, 16),
        title: const Text('Home'),
        //leading: drawer != null ? const LeadingIcon() : Container(),
        actions: actions,
      ),
      // drawer: drawer ??
      //     const SizedBox(
      //       height: 0.0,
      // ),
      body: body,
      bottomNavigationBar: bootomNavigationBar,
    );
  }
}

class LeadingIcon extends StatelessWidget {
  const LeadingIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
        );
      },
    );
  }
}
