void main() {
  // khai báo biến
  int age = 21;
  String info =
      'My name Triều, ' + age.toString(); // chuyển số thành String và nối chuỗi
  String infoSecond = 'My name Triều, ${age}'; // cách dùng biến trong chuỗi
  String infoThird =
      'My name Triều, ${doSomething()}'; // cách dùng biến trong chuỗi
  // Kiểu dữ liệu của biến var sẽ phụ thuộc vào kiểu dữ liệu của giá trị gắn vào
  var testTypeInt = 1;
  var testTypeString = "Hello";
// khi dùng kiểu dữ liệu const hoặc final thì biến giá trị không được thay đổi.
  const number = 1;
  final love = 'real'; // thường sẽ dùng const hơn là final
  // khai báo danh sách list
  var list = [1, 2, 3, 4]; // khai báo cách 1
  List<int> list2 = [1, 2, 3]; // khai báo cách 2
  list.add(5); // thêm phần tử cho list
  list2[0] = 4; // thay đổi value của list
  List<String> list3 = [];
  list3.add('value1');
  list3.add('value2');
  list3.add('value3');
  list3.removeAt(1); // xóa phần tử tại vị trí thứ... trong List
  // List đặt biệt: Set => giống như list nhưng ko thể add các value đã tồn tại có sẵn trong danh sách
  var list4 = {'set1', 'set2', 'set3', 'set4'};
  list4.add('set1'); // không thể add vì đã có 'set1' trong list4;
  list4.add('set5'); // có thể add vì chưa có 'set5' trong list4;
  Set<String> list5 = {};
  // test
  print(testTypeInt);
  print(info);
  print(infoSecond);
  print(infoThird);
  print('Hello world');
  print(doSomething());
  print(list);
  print(list2);
  print(list3);

  // gọi class Bicycle
  var bike = Bicycle(1,2);
  bike.speedUp(5);
  print(bike);

  // BTVN
  print(Fibonaci(3));
}

// khai báo hàm
String doSomething() {
  //print("Do some thing...");
  return "Something is true";
}

class Bicycle {
  // khai báo biến trong class
  // sẽ có 2 loại biến trong class là private và public
  int cadence; // biến public
  int _speed = 0; // biến private (có dấu '_' ở trước biến)
  int get speed => _speed;
  int gear;

  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => 'Bicycle: $_speed mph';
}

// BTVN - tính số Fibonaci bất kỳ

int Fibonaci(int i){
if(i==1||i==2) return 1;
return Fibonaci(i-1)+Fibonaci(i-2);
}


