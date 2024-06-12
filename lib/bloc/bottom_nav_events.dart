abstract class BottomNavBarEvent{}

class OnItemTapped extends BottomNavBarEvent{
  final int index;
  OnItemTapped(this.index);
}