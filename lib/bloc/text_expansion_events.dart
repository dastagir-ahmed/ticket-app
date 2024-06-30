abstract class TextExpansionEvents{}

class IsExpandedEvent extends TextExpansionEvents{
  final bool isExpanded;
  IsExpandedEvent(this.isExpanded){
    print("The sent value is $isExpanded");
  }
}