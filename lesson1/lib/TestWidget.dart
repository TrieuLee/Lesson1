
class TestWidget{
  int width;
  int height;
  String? lable;

  TestWidget({required this.width,required this.height});
  TestWidget.second(this.lable,{required this.width,required this.height});

  @override
  String toString() {
    return 'TestWidget{width: $width, height: $height, lable: $lable}';
  }
// Dart có thể cho nhiều contructor nhưng phải khác tên bằng cách là thêm dấu'.' + 'tên đặt'


}
void main(){
  TestWidget tw1=TestWidget(width: 100, height: 200);
  TestWidget tw2=TestWidget(width: 200, height: 300);
  tw2.lable='Widget2';// có thể thay đổi giá trị lable như này!
  TestWidget tw3=TestWidget.second('Widget3', width: 100, height: 200);
  print(tw1);// nếu lable ko có thì trả về null
  print(tw2);
  print(tw3);
}