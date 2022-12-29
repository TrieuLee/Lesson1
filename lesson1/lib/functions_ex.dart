void main() {
  printName('Lê', 'Triều', middleName: 'Hải',middleName2: 'isRequired');
print(sumUp(1,1,1,null,1));
}

//Functions with Named Parameters
// Đối với Name Parameters có thể truyền vào hay ko đều được.
void printName(String firstName, String lastName,
    {String? middleName, required String middleName2}) {
  print('$firstName ${middleName ?? ''} $lastName');
}

//Optinal Parameters
// Đối với Optinal Parameters sẽ có giá trị mặc định trước, nếu không truyền giá trị đó vào thì sẽ lấy giá trị mặc định
// Trường hợp truyền giá trị vào thì giá trị đó sẽ ghi đè lên giá trị mặc định.
int sumUp(int a,[int b=2, int c = 3, int? d,int e =5]){
  return (a+b+c+(d??0)+e);
}

// lưu ý chung: Named và Optional đều phải đặt ở dưới cùng.
