import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dice_event.dart';
part 'dice_state.dart';

class DiceBloc extends Bloc<DiceEvent, DiceState> {
  DiceBloc() : super(DiceInitialState()) {
    on<ChangeDice>((event, emit){
      final num = Random().nextInt(6) + 1;
return emit(DiceState(diceCount: num));
    });
  }
}
