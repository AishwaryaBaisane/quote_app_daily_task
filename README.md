# quote_app_daily_task

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


