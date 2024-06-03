# quote_app_daily_task

## Dialogue :
<p>
  <img src = "https://github.com/AishwaryaBaisane/quote_app_daily_task/assets/149373597/76cf6bb8-0ecb-47d5-b562-24735c682b56" height = 25% width = 20%>
  <img src = "https://github.com/AishwaryaBaisane/quote_app_daily_task/assets/149373597/e3505c78-e2fa-449e-b43f-7142bfd1f118"  height = 25% width = 20%>
  <img src = "https://github.com/AishwaryaBaisane/quote_app_daily_task/assets/149373597/7424b844-f891-465b-ab2c-090ae2ddac8d" height = 25% width = 20%>
  <img src = "https://github.com/AishwaryaBaisane/quote_app_daily_task/assets/149373597/674abb7a-9024-4a88-9b36-0e74c828d033" height = 25% width = 20%>
</p>

## Modal Class & Factory Constructor.

## Modal Class :
- Model classes promote code structure, reusability, and maintainability.
- They have data and practices for specific products, making the code modular and easy to understand.

```dart

class studentModel
{
  String? name;
  int? number;

  studentModel({this.name,this.number});

  factory studentModel.fromStudent({required Map Student})
  {
    return studentModel(name: Student['name'],number: Student['roll_number']);
  }

}
```
[dialogboxrecod.webm](https://github.com/AishwaryaBaisane/quote_app_daily_task/assets/149373597/c5901726-dd73-4bf3-8ee2-2830bcb83fd6)

## Factory Constructor :

- A factory constructor in Flutter is a special type of constructor that doesn't always create a new instance of its class.
- Instead, it may return an existing instance or even an instance of a different class. 
- This flexibility allows developers to control the object creation process more precisely.

```dart

class Student
{
   String? name;
   int? number;

   Student({this.name,this.number});


   List studentList =
   [
     Student(name: 'aaryan',number: 1,),
     Student(name: 'anshu', number: 2,),
 


   ];
}

List student2List = [
       {'name' : 'aaryan','roll_number' : 1,'course' : 'flutter'},
       {'name' : 'anshu','roll_number' : 2,'course' : 'flutter'},
       {'name' : 'radha','roll_number' : 3,'course' : 'flutter'},
       {'name' : 'aarya','roll_number' : 4,'course' : 'flutter'},
       {'name' : 'aaryan','roll_number' : 5,'course' : 'flutter'},
       {'name' : 'aanshu','roll_number' : 6,'course' : 'flutter'},
       {'name' : 'aaryan','roll_number' : 7,'course' : 'flutter'},
       {'name' : 'aaryan','roll_number' : 8,'course' : 'flutter'},
       {'name' : 'aaryan','roll_number' : 9,'course' : 'flutter'},
 
];
List l1=[];

void main()
{
   for(int i=0; i<student2List.length; i++)
   {
      studentModel s1 = studentModel.fromStudent(Student: student2List[i]);
      l1.add(s1);
   }

   for(int i=0; i<l1.length; i++)
   {
     stdout.write('name : ${l1[i].name}'+' Roll_Number : ${l1[i].number}'+'\n');
   }
}


```


