part of 'dice_bloc.dart';

class DiceState {
final int diceCount;

  DiceState({required this.diceCount});

}

class DiceInitialState extends DiceState{
  DiceInitialState() : super(diceCount: 1);

}
