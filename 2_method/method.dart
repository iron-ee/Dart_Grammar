
void test(t1, t2) {
  // print('매개변수에 변수타입을 생략할 수 도 있다는 하나의 예');
  // print('변수타입을 생략하면 dynamic 타입으로 지정이 된다.');
  print('$t1 $t2');
}

void add(int n1, var n2) {
  print('더하기 함수입니다.');
  print(n1 + n2);
}

/// dart 는 오버로딩이 되지 않는다 !
/// 예를 들면
/// void a(int a1) {}
/// void a(String a1) {}
/// 이런식으로 java 에서는 가능한 오버로딩이 dart 에서는 안 됨 !


/// 그 대신 신박한 dart 메서드 기능을 보여드림 !
void unbelievable(int u3, {int? u1, int? u2}) {
  /// 여기서 사용 된 int 뒤에 물음표(?)는 매개변수 u1이 null 인지 아닌지 확실하지 않은 경우에 사용하거나, 개체가 null 일 수 있을 때 사용
  /// 그리고 느낌표(!)는 null 이 아니야 ! 라고 선언할 때 사용.  u1! 이면 u1은 null 이 아니야 !
  /// 매개변수를 받을 때 {} 안에 있는 매개변수는 선택적 매개변수가 되어서 받아도 되고, 안받아도 된다 ! 완전 개쩌는 기능
  /// 그래서 u3는 무조건 받아야 하는 매개변수이고,  u1, u2는 받아도 안받아도 상관없는 매개변수 !

  print(u1! + u2! + u3);


  /// 물음표(?)를 선언해주었기 때문에 null 값을 넣어줄 수 있다 !
  u1 = null;
  print(u1);
}

/// 익명함수 사용
/// Function 을 사용해서 메서드를 하나의 변수로써 사용이 가능하다 !
Function minus = (int m1, int m2) {
  print('빼기 함수입니다.');
  print(m1 - m2);
  return m1-m2;
};


/// 선택적 매개변수도 사용이 가능하다. return 타입이 int 이니깐 int 로 선언해주면 된다.
Function fun = (int f1, {int f2 = 0, int f3 = 0}) {
  print(f1 + f2 + f3);
};


/// 메서드를 변수로 선언해서 사용해보기 ~
Function asd = () {
  print('ㅎㅇ');
};

void func(Function ff) {
  ff();
}


/// 화살표 함수
int add2() {
 return 1 + 1;
}
// 위에 친구를 화살표 함수로 생략 -> {} 중괄호 생략 그리고 return 생략
int add3() => 1 + 1;

/// 화살표 함수를 저장하는 변수
Function add4 = () => 1 + 1;

void main() {
  /// 변수타입을 지정하지 않으면 dynamic 으로 지정
  print('---------------------');
  test('irone', 123);
  test('flutter', 'fun');
  test(123, 456);
  print('---------------------');


  /// var 변수타입을 사용해서 int, double 무엇이든 다 받을 수 있음
  print('---------------------');
  add(1, 5);
  add(1, 5.56);
  print('---------------------');


  /// 선택적 매개변수는 값을 받을 때, 어떤 매개변수가 값을 받는지 모르기 때문에 지정해서 넣어준다 !
  print('---------------------');
  unbelievable(5, u1: 3, u2: 3);
  print('---------------------');


  /// 메서드를 하나의 변수로 사용하기 1
  print('---------------------');
  minus(5,1);
  print('minus()의 return 값 : ${minus(5,3)}');
  print('---------------------');

  /// 메서드를 하나의 변수로 사용하기 2
  print('---------------------');
  fun(3);
  fun(3, f2: 2, f3: 1);
  func(asd);
  print('---------------------');
}