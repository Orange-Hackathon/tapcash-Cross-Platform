//get the past three months names and store them in a list
import 'package:intl/intl.dart';

List<String> pastMonths = [
  DateFormat('MMM').format(DateTime.now().subtract(const Duration(days: 60))),
  DateFormat('MMM').format(DateTime.now().subtract(const Duration(days: 30))),
  DateFormat('MMM').format(DateTime.now().subtract(const Duration(days: 0))),
];
