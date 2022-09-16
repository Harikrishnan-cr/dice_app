import 'package:dice/dice%20app/dice_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiceAppScreen extends StatelessWidget {
  const DiceAppScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.amber[800],
          title: const Text(
            'Dice',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(child: BlocBuilder<DiceBloc, DiceState>(
                  builder: (context, state) {
                    return Image(
                      image: AssetImage('assets/images/dice${state.diceCount}.png'),
                      width: 255,
                    );
                  },
                )),
                const SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(horizontal: 130)),
                    ),
                    onPressed: () {
                      context.read<DiceBloc>().add(ChangeDice());
                      // setState(() {
                      //   num = Random().nextInt(6) + 1;
                      // });
                    },
                    child: const Text(
                      'Roll',
                      style: TextStyle(fontSize: 35),
                    )),
                const SizedBox(
                  height: 60,
                )
              ],
            ),
          ),
        ));
  }
}
