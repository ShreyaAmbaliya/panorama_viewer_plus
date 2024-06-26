// Import dart:js only for web
import 'dart:js' show context;

String getImageUrl() {
  return context['location']['origin'];
}
