import 'package:strava_clone/src/boot.dart';

class YourLayout extends StatelessWidget {
  final Widget? drawer;
final Widget? bootomNavigationBar;
  final List<Widget>? actions;
  final Widget body;

  const YourLayout(
      {Key? key, required this.body,this.bootomNavigationBar, this.drawer, this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(

          preferredSize: Size.fromHeight(110.0), // here the desired height
          child:Column(
            children: [
              AppBar(
       automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 228, 33, 16),
        title: const Text('You',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),
        //leading: drawer != null ? const LeadingIcon() : Container(),
        actions: actions,
        
      ),
      Container(
        color:Color.fromARGB(255, 228, 33, 16),
        height:45,width:700,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(60,18,30,7),
          child: Row(
            children: [
              Text("PROGRESS",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
              Padding(
                padding: const EdgeInsets.only(left:120),
                child: Text("ACTIVITIES",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
              )
            ],
          ),
        ),
      )
            ],
          ),),
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
