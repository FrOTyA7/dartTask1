import 'dart:io';

void main() {
  // parse data
  String? D = stdin.readLineSync();
  List<String>? O = stdin.readLineSync()?.split(' ');
  List<String>? C = stdin.readLineSync()?.split(' ');
  int distance;
  if (D != null)
    distance = int.parse(D);
  else
    return;
  final online = <int>[];
  if (O != null) for (String o in O) online.add(int.parse(o));
  final offline = <int>[];
  if (C != null) for (String c in C) offline.add(int.parse(c));
  print(taxis(distance, online, offline) ? "Online Taxi" : "Classic Taxi");
}

//online taxi
bool taxis(int distance, List<int> online, List<int> offline) {
  return onlineCost(distance, online) <= offlineCost(distance, offline);
}

int onlineCost(int distance, List<int> online) {
  if (distance >= online[1])
    return online[0] + online[2] * (distance - online[1]);
  else
    return online[0];
}

double offlineCost(int distance, List<int> offline) {
  double time = distance / offline[0];
  return offline[1] + time * offline[2] + distance * offline[3];
}
