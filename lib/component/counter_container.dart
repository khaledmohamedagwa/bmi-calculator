import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constant.dart';

class CounterContainer extends StatelessWidget {
  CounterContainer({
    required this.counterContainerLabel,
    required this.counterValue,
    required this.incrementOnPressed,
    required this.decrementOnPressed,
    required this.firstHeroTag,
    required this.secondeHeroTag,
  });
  final String counterContainerLabel;
  final int counterValue;
  final VoidCallback incrementOnPressed;
  final VoidCallback decrementOnPressed;
  final int firstHeroTag;
  final int secondeHeroTag;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: activeContainerColor,
        borderRadius: BorderRadius.circular(containerBorderRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${counterContainerLabel}", style: containerLabelStyle),
          Text(
            '$counterValue',
            style: numberStyle,
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: decrementOnPressed,
                child: Icon(
                  FontAwesomeIcons.minus,
                ),
                elevation: 5,
                heroTag: firstHeroTag,
                backgroundColor: floatActionButtonColor,
              ),
              SizedBox(
                width: 8,
              ),
              FloatingActionButton(
                onPressed: incrementOnPressed,
                child: Icon(FontAwesomeIcons.plus),
                elevation: 5,
                heroTag: secondeHeroTag,
                backgroundColor: floatActionButtonColor,
              )
            ],
          )
        ],
      ),
    ));
  }
}
