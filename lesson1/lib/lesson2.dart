
void main() {
  // kiểu dữ liệu int và String không cho giá trị là null. Nếu muốn gắn giá trị cho Null thì
  // dùng Null Safety (thêm dấu '?' sau kiểu dữ liệu).

  int? a;
  a = null;
  String? mess = null;
  var checkScore = getScore('1', 10);
// Safe null trong List
  List<String> aListOfStrings = ['one', 'two', 'three'];
  List<String>? aNullableListOfStrings;// nếu list chưa có giá trị thì để như vậy!
  List<String?> aListOfNullableStrings = ['one', null, 'three']; //nếu list đã có giá trị thì để như này!

  // test
  print('a is $a.');
  print(checkScore);
  print('aListOfStrings is $aListOfStrings.');
  print('aNullableListOfStrings is $aNullableListOfStrings.');
  print('aListOfNullableStrings is $aListOfNullableStrings.');
}

int? getScore(String userId, int? lastScore){
  if(lastScore!=null)return lastScore;
  return 0;
}
// lưu ý khi dùng Safe null
int getScore2(String userId, int? lastScore){
  //return lastScore; // sẽ báo lỗi vì kiểu dữ liệu của lastScore có thể null mà hàm thì ko thể
  // cách xử lý
  // cách 1: kiểm tra xem có = null ko, nếu có thì trả về 1 giá trị nào đó!
  // if(lastScore!=null)return lastScore;
  //   return 0;
  // cách 2: cơ chế giống cách 1 nhưng viết tắt gọn hơn, nếu null thì trả về ko
  //return lastScore??0;
  //cách 3: dùng dấu '!' để trình biên dịch chấp nhập lastSCore, nhưng nếu lastSCore=null thì sẽ xuất ra là sai.
  return lastScore!;
}
