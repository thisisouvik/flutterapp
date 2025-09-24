import 'package:flutter/material.dart';

//Value Notifier : hold the data
// Value ListenableBuilder: listen to the data (dont need setstate)

ValueNotifier<int> selectedPageNotifier = ValueNotifier(0);
ValueNotifier<bool> isDarkModeNotifier = ValueNotifier(true);

