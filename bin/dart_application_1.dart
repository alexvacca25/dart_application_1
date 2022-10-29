import 'package:http/http.dart' as http;

void main() {
  // consultapost();
  consultacomments()
      .then((resultado) => print(resultado))
      .catchError((e) => print(e.toString()));
}

Future<String> consultacomments() async {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/comments/1");
  var response = await http.get(url);

  if (response.statusCode == 200) {
    return response.body;
  } else {
    return response.statusCode.toString();
  }
}

void consultapost() async {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/posts/10000");
  var response = await http.get(url);
  if (response.statusCode == 200) {
    print('Resultado: ${response.body}');
  } else {
    print('Error: ${response.statusCode}');
  }
}
