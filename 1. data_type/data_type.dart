/// dart 의 기본 자료형

var num = 1;
var dnum = 1.5;
var name = 'irone';
var list = ['apple', 'banana'];
var user = {
  // Map 자료형
  "id" : 1,
  "username" : "irone"
};

int num1 = 1;
double dnum1 = 1.5;
String name1 = 'irone';
List<String> list1 = ['apple', 'banana'];
Map<String, dynamic> user1 = {
  'id' : 1,
  'username' : 'irone'
};

void main() {
  print('$list ${list[0]}');
  print('$user1 유저아이디는 ${user1['id']} 유저네임은 ${user1['username']}');
}