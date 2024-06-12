
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'text_expansion_provider.g.dart';

@riverpod
class TextExpansionNotifier extends _$TextExpansionNotifier{

  @override
  bool build(){
    return false;
  }

  void toggleText(bool toggle){
    state = !toggle;
    //state = selectedIndex.value
  }
}