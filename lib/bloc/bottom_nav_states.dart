abstract class BottomNavState{}

class BottomNavBarInitial extends BottomNavState{}

class BottomNavBarSelected extends BottomNavState{
  final int selectedIndex;
  BottomNavBarSelected(this.selectedIndex);
}
