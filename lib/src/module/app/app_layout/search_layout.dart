import 'package:strava_clone/src/boot.dart';
bool ispressed=false;
class SearchLayout extends StatelessWidget {
  final Widget? drawer;

  final List<Widget>? actions;
  final Widget body;

  const SearchLayout(
      {Key? key, required this.body, this.drawer, this.actions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(

          preferredSize: Size.fromHeight(270.0), // here the desired height
          child:Column(
            children: [
              AppBar(
       //automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 228, 33, 16),
        title: const Text('Search',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
      
        
      ),
      Container(
        color:Color.fromARGB(255, 228, 33, 16),
        height:45,width:700,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(70,18,20,7),
          child: Row(
            children: [
              InkWell(onTap: () {
               ispressed=true;
               print(ispressed);
               // Navigator.pushNamed(context,'/active');
              }, 
             // Text("FRIENDS",style: TextStyle(color: Colors.white),)),

              child:Text("FRIENDS",style: TextStyle(color:ispressed?Colors.white :Color.fromARGB(255, 247, 163, 138),fontWeight: FontWeight.w600),)),
              
               Padding(
                padding: const EdgeInsets.only(left:130),
                child: InkWell(onTap: () {
                  ispressed:true;
                 //Navigator.pushNamed(context, '/club');
                },child:Text("CLUB",style: TextStyle(color:ispressed?Colors.white :Color.fromARGB(255, 247, 163, 138),fontWeight: FontWeight.w600),)),
              )
            ],
          ),
        ),
      ),
      Card(elevation:1,
        child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15,15,15,6),
                  child: Container(height:35,width: 600,
                   // color: Colors.amber,
                   decoration:BoxDecoration(borderRadius: BorderRadius.circular(4),color: Color.fromARGB(255, 231, 230, 225)) ,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:8.0),
                        child: Icon(Icons.search_outlined,color: Colors.grey.shade600,),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:5.0),
                        child: Text("Search on Strava",style: TextStyle(color: Colors.grey.shade500),),
                      )
                    ],
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,0,0),
                  child: Divider(
                    color: Colors.black,thickness: 0.09,
                  ),
                ),
                Container(
                 height: 70,width:400,
                  child: Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(onTap: () {
                            Navigator.pushNamed(context,'/search');
                          },
                            child: Column(
                              children: [
                                Icon(Icons.person,size: 32,),
                                Text("SUGGESTED",style: TextStyle(fontSize:11,fontWeight: FontWeight.w700),)
                              ],
                            ),
                          ),
                        ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15,7,10,0,),
                            child: InkWell(onTap: () {
                              Navigator.pushNamed(context,'/facebook');
                            },
                              child: Column(
                              children: [
                                Image.asset("assets/images/ws2.png",height: 32,width: 32,),
                                Text("FACEBOOK",style: TextStyle(fontSize:11,fontWeight: FontWeight.w700),)
                              ],
                                                ),
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(13,8,10,0,),
                          child: InkWell(onTap: (){
                            Navigator.pushNamed(context,'/contact');
                          },
                            child: Column(
                              children: [
                              Image.asset("assets/images/add2.png",height: 23,width: 25,),
                                Padding(
                                  padding: const EdgeInsets.only(top:7.0),
                                  child: Text("CONTACTS",style: TextStyle(fontSize:11,fontWeight: FontWeight.w700),),
                                )
                              ],
                            ),
                          ),
                        ),
                      
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10,6,0,0),
                          child: Column(
                            children: [
                              Image.asset("assets/images/q.png",height: 27,width: 27,),
                              Padding(
                                padding: const EdgeInsets.only(top:5.0),
                                child: Text("QR CODE",style: TextStyle(fontSize:11,fontWeight: FontWeight.w700),),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Container(height:25,width:700,
                //   color: Color.fromARGB(255, 219, 223, 214),
                //   child: Padding(
                //     padding: const EdgeInsets.fromLTRB(16,8,0,0),
                //     child: Text("PEOPLE YOU MAY KNOW",style: TextStyle(fontSize:9,color: Colors.grey.shade800),),
                //   ),
                // )
              ],
            ),
      ),
            ],
          ),),
      // drawer: drawer ??
      //     const SizedBox(
      //       height: 0.0,
      // ),
      body: body,
    
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
