import 'package:flutter/material.dart';
import 'dart:async';

class ChronoGuardTimer extends StatefulWidget {
  final Duration duration;
  const ChronoGuardTimer({super.key, required this.duration});

  @override
  State<ChronoGuardTimer> createState() => _ChronoGuardTimerState();
}

class _ChronoGuardTimerState extends State<ChronoGuardTimer> {
  late Duration remaining;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    remaining = widget.duration;
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (remaining.inSeconds > 0) {
        setState(() => remaining -= const Duration(seconds: 1));
      } else {
        timer?.cancel();
      }
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '${remaining.inMinutes.toString().padLeft(2, '0')}:${(remaining.inSeconds % 60).toString().padLeft(2, '0')}',
      style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.teal),
    );
  }
}
