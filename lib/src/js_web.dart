// Import dart:js and show the context symbol
import 'dart:js' show context;

String getImageUrl() {
  return context['location']['origin'];
}
