extension DurationExt on Duration {
  static String toICalendar(Duration duration) {
    final weeks = duration.inDays ~/ 7;
    final days = duration.inDays % 7;
    final hours = duration.inHours % 24;
    final minutes = duration.inMinutes % 60;
    final seconds = duration.inSeconds % 60;

    final List<String> parts = [];
    if (weeks > 0 || days > 0) parts.add("P");
    if (weeks > 0) parts.add("${weeks}W");
    if (days > 0) parts.add("${days}D");
    if (hours > 0 || minutes > 0 || seconds > 0) parts.add("T");
    if (hours > 0) parts.add("${hours}H");
    if (minutes > 0) parts.add("${minutes}M");
    if (seconds > 0) parts.add("${seconds}S");

    return parts.join();
  }

  static Duration fromICalendar(String value) {
    final durRegexp = RegExp('(?:([0-9]+)(D|W|H|M|S))', caseSensitive: false);
    final durMatches = durRegexp.allMatches(value);

    int getValueFor(String valueKey) {
      late final String value;
      try {
        value = durMatches
                .where(
                  (element) => element.group(2)?.toUpperCase() == valueKey,
                )
                .firstOrNull
                ?.group(1) ??
            "0";
      } catch (e) {
        value = "0";
      }
      return int.tryParse(value) ?? 0;
    }

    final hasWeeks = durMatches.map((e) => e.group(2)).any(
          (element) => element?.toUpperCase() == "W",
        );

    if (hasWeeks) {
      // this is weird, it will be wrong for leap days
      // good there will be no lessons with duration like that
      return Duration(
        days: getValueFor("W") * 7,
      );
    }

    return Duration(
      days: getValueFor("D"),
      hours: getValueFor("H"),
      minutes: getValueFor("M"),
      seconds: getValueFor("S"),
    );
  }
}
