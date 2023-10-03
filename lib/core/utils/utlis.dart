class Utils {
  static String getTimeOfDay() {
    final currentTime = DateTime.now().hour;

    if (currentTime < 12) {
      return '  Morning';
    } else if (currentTime < 17) {
      return 'Afternoon';
    } else {
      return 'Evening';
    }
  }
}
