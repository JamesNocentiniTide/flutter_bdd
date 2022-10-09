import 'package:golden_toolkit/golden_toolkit.dart';

Feature: Counter

     Scenario: Initial counter value is 0
          Given the app is rendered
          Then I see {'0'} text
          Then {'initial'} screenshot verified

     Scenario: Plus button increases the counter value
          Given the app is rendered
          When I tap {Icons.add} icon
          Then I see {'1'} text
          Then {'increment'} screenshot verified

     Scenario: The text is BDD rules when the counter value is 3
          Given the app is rendered
          When I tap {Icons.add} icon
          When I tap {Icons.add} icon
          When I tap {Icons.add} icon
          Then I don't see {'3'} text
          And I see {'BDD rules'} text
          When I tap {Icons.add} icon
          Then I see {'4'} text
          Then {'increment_plus'} screenshot verified
     