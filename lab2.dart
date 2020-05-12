void main() {
  int age = 20;
  if (age > 50) {
    print("Old");
  } else if (age > 20) {
    print("Medium");
  } else if (age <= 20) {
    print("Young");
  }

  var a = [1, 2, 3];
  for (int i = 0; i < a.length; i++) {
    print("a = ${a[i]}");
  }
  print(square(5.5));
  print(squareArrow(3.3));

  Dog dog1 = Dog("dog1","dd");
  dog1.bark();

  SmallDog dog2 = SmallDog("dog2","sss",45);
  dog2.runAay();
  if(dog2.isSmall()) print(true);
  else print(false);
}

double square(double num1, [double num2]) {
  return num1 * (num2 ?? num1);
}

double squareArrow(double num1, [double num2]) => num1 * (num2 ?? num1);

class Dog {
  int age;
  var type;
  String name;
  int size;

  Dog( var type, String name, [int size = 10,int age = 5]) {
    this.age = age;
    this.size = size;
    this.type = type;
    this.name = name;
  }

  void bark(){
    print("name $name type $type age $age size $size เห่าว่า text");
  }
}

class SmallDog extends Dog{
  int MAX_BODY_SIZE = 30;
  SmallDog(var type, String name, [int size = 10,int age = 5] ):super(type,name,size,age);

  void runAay(){
    print("I am running");
  }

  bool isSmall(){
    if(this.size>this.MAX_BODY_SIZE) return false;
    else return true;
  }
}
