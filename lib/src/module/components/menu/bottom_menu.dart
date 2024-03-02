import 'package:strava_clone/src/boot.dart';
import 'package:strava_clone/src/module/components/menu/bloc/menu_bloc.dart';

List<String> bottomNavRoutes = ["/home_screen","/timer", "/record", "/challenge","/portfolio"];

class BottomMenu extends StatelessWidget {
  const BottomMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MenuBloc menuBloc = BlocProvider.of<MenuBloc>(context);
    final state = context.watch<MenuBloc>().state;
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          
          icon: Icon(Icons.home),
          label: 'Home',
          backgroundColor: Colors.white
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on),
          label: 'Maps',
          backgroundColor: Colors.white
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.radio_button_on),
          label: 'Record',
          backgroundColor: Colors.white
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_alt_rounded),
          label: 'Groups',
          backgroundColor: Colors.white
        ),
         BottomNavigationBarItem(
          icon: Icon(Icons.paste_outlined),
          label: 'You',
          backgroundColor: Colors.white
        ),
      ],
      currentIndex: state.bottomMenuSelectedIndex,
      selectedItemColor: Color.fromARGB(255, 239, 59, 5),
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      
      onTap: (value) {
        if (state.bottomMenuSelectedIndex != value) {
          menuBloc.add(MenuSelected(
              bottomMenuSelectedIndex: value,
              leftMenuSelectedIndex: state.leftMenuSelectedIndex));
          Navigator.pushNamed(context, bottomNavRoutes[value]);
        }
      },
    );
  }
}
