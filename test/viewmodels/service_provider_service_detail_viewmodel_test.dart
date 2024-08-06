import 'package:flutter_test/flutter_test.dart';
import 'package:disertation/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('ServiceProviderServiceDetailViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
