/// 반복문, 얕은, 깊은 복사

void main() {
  var list = [1, 2, 3, 4];

  print('----------------------------------');
  print('기본 반복문 for 문');
  /// 기본 반복문 for 문
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
  print('----------------------------------');


  print('for in 문');
  /// for in 문 (list 라는 배열의 끝까지 돌 것 이라면)
  for (int e in list) {
    print(e);
  }
  print('----------------------------------');

  print('forEach 문');
  /// forEach 문
  list.forEach((e) {
    print(e);
  });
  print('----------------------------------');

  print('얕은 복사');
  /// 얕은 복사
  var newList = list; // 주소 복사
  print(newList);
  print('----------------------------------');

  print('얕은 복사 map');
  /// 반복해서 값을 리턴해주는데 그 값을 연산해서 리턴할 수 있음 ! 유용하게 잘 사용함
  var mapList1 = list.map((e) => e * 3);
  print(mapList1);
  print('');

  var mapList2 = list.map((e){
    if(e != 2) {
      return e * 2;
    } else {
      return e-1;
    }
  });
  print(mapList2);
  print('----------------------------------');

  print('깊은 복사 spread');
  /// 깊은 복사 (스프레드 연산자)
  var spreadList = [10, ...list, 1000];
  print(spreadList);
  list[0] = 0;
  print(list);
  list[1] = 12;
  print(list);
  print(spreadList);
  print('----------------------------------');

  print('필터링이 가능한 where 복사 (얕은 복사)');
  /// 배열에서 어떤 값을 필터링 한 뒤 얕은 복사하는 방법 !
  var filterList = list.where((e) => e != 3);
  print(filterList);
  print('----------------------------------');
}