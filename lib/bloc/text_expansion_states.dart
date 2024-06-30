abstract class TextExpansionStates{}

class IsExpandedState extends TextExpansionStates{
  final bool isExpanded;
  IsExpandedState(this.isExpanded);
}