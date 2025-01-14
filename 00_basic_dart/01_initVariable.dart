
//기본 초기화
int age = 25; // 정수형 변수 초기화
String name = "Alice"; // 문자열형 변수 초기화
bool isActive = false; //불리언형 변수 초기화 

//2. 생성자를 통한 초기화
class Person{
  String name;
  int age;

  Person(this.name, this.age);

}

void main()async{
  Person person = Person("Bob", age);
  print('${person.name}은 ${person.name}세 입니다.');

  
  //3.null 안정성 초기화
  String? nullableString;
  print(nullableString);
  nullableString = 'hello';
  //print(person!.age); //person이 null아닌경우 age참조하게ㄸㅑ
  //print(nullableString!.length);  null이 아니면 length참조


  //late
  /*
  late 키워드는 다트에서 변술르 나중에 초기화할수 있음을 나타내는 특수한 키워드이다.
  이는 변수가 선언된 후에 초기홛될 것임을 명시하며, 초기화가 이루어지기전에 변수를 사용하려고 하면 런타임 오류를 발생한다.
  late는 null 안정성을 유지하면서도 변수를 지연 초기화 할수 있는 유용한 방법이다.

  주로 복잡한 객체 생성 혹은 비동기 요청 이후 초기화를 위한 목적으로 사용된다.


    
  * */

  late String description;
  //print(description);   //초기화가 되지 않아서 오류가 발생함.
  description = "나중에 초기화됨";
  print("late $description");


  late String data;
  //fetchDate 메소드가 실행된 이후에 반환된 값 없음 void
  Future<void> fetchDate()async{ 

    await Future.delayed(Duration(seconds: 2));
    data = "데이터 초기화 완료";

  }
  await fetchDate();
  print("$data");
}

