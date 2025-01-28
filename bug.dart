```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Properly handle the JSON response
      final jsonResponse = jsonDecode(response.body);
      // Access data from the JSON response
      print(jsonResponse['key']);
    } else {
      // Handle non-200 status codes appropriately
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle any potential exceptions that might occur during the API call
    print('An error occurred: $e');
    // Consider re-throwing the exception to be handled by a higher level.
    rethrow;
  }
}
```