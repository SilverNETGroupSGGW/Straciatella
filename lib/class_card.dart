import 'package:psggw/models/class.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class ClassCard extends StatelessWidget {
  const ClassCard(this._class, this.progress, {super.key});

  final double progress;
  final Class _class;

  IconData classIcon(Class currentClass) {
    if (currentClass.type == "Labolatoria") {
      return Symbols.science_rounded;
    } else if (currentClass.type == "Wykład") {
      return Symbols.school_rounded;
    } else {
      return Symbols.edit_rounded;
    }
  }

  Widget iconWithText(
      BuildContext context, IconData icon, String text, bool reverse) {
    Widget iconBox = Padding(
      padding: reverse
          ? const EdgeInsets.only(left: 6)
          : const EdgeInsets.only(right: 6),
      child: Icon(
        icon,
        size: 18,
      ),
    );
    return Row(
      mainAxisAlignment:
          reverse ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        reverse ? Container() : iconBox,
        Text(
          text,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        reverse ? iconBox : Container(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 12),
            child: TimeColumn(currentClass: _class),
          ),
          Expanded(
            child: Card(
              margin: const EdgeInsets.only(
                left: 12,
                right: 12,
                bottom: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 9, top: 9, bottom: 9),
                    child: SizedBox(
                      width: 6,
                      child: RotatedBox(
                        quarterTurns: 1,
                        child: LinearProgressIndicator(
                          value: progress,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(6)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                _class.name,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  iconWithText(
                                    context,
                                    Symbols.person,
                                    _class.teacher,
                                    false,
                                  ),
                                  const SizedBox(height: 3),
                                  iconWithText(
                                    context,
                                    classIcon(_class),
                                    _class.type,
                                    false,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  iconWithText(
                                    context,
                                    Symbols.chair_alt,
                                    _class.room,
                                    true,
                                  ),
                                  const SizedBox(height: 3),
                                  iconWithText(
                                    context,
                                    Symbols.floor,
                                    _class.floor,
                                    true,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TimeColumn extends StatelessWidget {
  const TimeColumn({
    super.key,
    required Class currentClass,
  }) : _class = currentClass;

  final Class _class;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          // Fixes width when start and end times are < 10:00
          SizedBox(
            height: 0,
            child: Text(
              "11:11",
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ),
          Text(
            _class.start.toString(),
            style: Theme.of(context).textTheme.labelSmall,
          ),
          const Expanded(
            child: VerticalDivider(
              indent: 9,
              endIndent: 9,
            ),
          ),
          Text(
            _class.end.toString(),
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ],
      ),
    );
  }
}
