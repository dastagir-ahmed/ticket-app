abstract class BottomNavBarEvent{}

class OnItemTapped extends BottomNavBarEvent{
  final int index;
  OnItemTapped(this.index){
    print("my index is $index");
  }
}