import 'dart:ffi';
import 'dart:math'; //Add math library.

void main() {
//----------------------Variables Basics------------------------------------

  int age = 21;
  print(age);
  print("Ben $age yaşındayım");

  String Name = "Ömer";
  print(Name);
  print("Benim ismim $Name.");

  double z = 3.1;
  print(z);
  print("Y sayısı $z'e eşittir.");

  bool issad = false;
  print(issad);

//----------------------String Basics------------------------------------

  String a = "Merhaba";
  //          0123456

  print(a.length); //String'in uzunluğunu döndürür

  print(a[3]); //String'in 3. karakterini döndürür(0'dan başlayarak).

  print(a.indexOf("r")); //"r" harfinin kaçıncı sırada olduğunu döndürür.

  print(a.contains("l")); //"l" harfini içeriyor mu? Kontrol eder.

  print(a.toUpperCase()); //Bütün karakterleri büyük yazdırır.

  print(a.toLowerCase()); //Bütün karakterleri küçük yazdırır.

//----------------------Int - Double Basics------------------------------------

  int x = 24; //For integers
  double y = 7.31; //For decimals

  //Print function can make mathematical operations.
  print(4 + 5);
  print(x - 2);
  print(y * 4);
  print(5 / 3);
  print(10 % 3);

  x = x + 12;
  print(x);
  x += 12; //You can use this all math operations(*=, /=).
  print(x);
  x++; //Plus "1".
  print(x);

  print(min(x, y)); //Shows which is lower.
  print(max(x, y)); //Shows which is bigger.

  print(x.abs()); //Mutlak Değer
  print(x.ceil()); //Sayıdan büyük en küçük tam sayıyı dödürür.
  print(x.floor()); //Sayıdan küçük en büyük tam sayıyı döndürür.
  print(x.round()); //Sayıya en yakın tam sayıyı döndür.
  print(x.remainder(3)); //3'e bölümümünden kalanı döndürür.

  print(sqrt(x)); //Takes the square root.

//----------------------Bool Basics------------------------------------

  print(5 < 3); //Is 5 lower then 3
  print(7 == 7); //Is 7 equal to 7

//----------------------Dynamic vs Var ------------------------------------

  // Dynamic olarak tanımlarsan türünü ve değerini daha sonra değiştirebilirsin.

  dynamic as = 'hal';
  as = 123;
  print(as);

  // Var olarak tanımlarsan başlangıçta değer ya da tür tanımlamazsan daha sonra değiştirebilirsin ama başlangıçta değer veya tür tanımlarsan değişken türünü değiştiremezsin.
  var ds;
  ds = 31;
  ds = "hal";
  print(ds);

  var sd = 'hal';
  // sd = 123; //Error
  print(sd);

//----------------------Final vs Const ------------------------------------

  // Final olarak tanımlarsan türünü ve değerini daha sonra değiştiremezsin.
  final ss = 4;
  // ss = 31; //Error
  print(ss);

  // Final olarak bir liste tanımlarsan türünü değiştiremezsin ama değerini daha sonra değiştirebilirsin.
  final fd = ["hal", "lah"];
  fd.add("hla");
  //fd.add(3); //Error
  print(fd);

  // Final olarak tanımladığın listeyi const ile tanımlarsan türünü ve değerini değiştiremezsin.
  final fg = const ["apple", "pear", "orange"];
  //fg.add("grape");//Error
  //fg.add(3); //Error
  print(fg);

//----------------------If - Else Statment------------------------------------

  var asd = 3;
  if (asd < 0) {
    print("$asd Negatiftir.");
  } else if (asd == 0) {
    print("$asd Pozitiftir.");
  } else {
    print("$asd Pozitiftir.");
  }

//----------------------Switch Case Statment------------------------------------

  var sdf = "C";
  switch (sdf) {
    case "A":
      {
        print("Excellent");
      }
      break;

    case "B":
      {
        print("Good");
      }
      break;

    case "C":
      {
        print("Fair");
      }
      break;

    case "D":
      {
        print("Poor");
      }
      break;

    default:
      {
        print("Invalid choice");
      }
      break;
  }

//----------------------For - While Loops------------------------------------

  /*
  For döngüsünde döngünün başlangıç ve bitiş değeri vardır. 
  While döngüsü ise mantıksal değeri yani true-false kontrol eder.
  Koşul true ise döngüye girer ta ki koşul false olana kadar. 
  */

  int we = 1;
  for (we; we <= 10; we++) {
    print(we);
  }

  var list1 = [10, 20, 30, 40, 50];
  int sum = 0;
  print("Dart for..in loop Example");
  for (var i in list1) {
    sum = i + sum;
  }
  print("The sum is : ${sum}");

  int ew = 0;
  while (ew <= 31) {
    print(ew);
    ew++;
  }

//----------------------Function Using------------------------------------

  var name1th = "Ömer";
  var name2th = "";
  marring(name1th, name2th);

//---------------------Class Using-----------------------------------

  var name = "Alios";
  var sname = "Ünal";
  Friends n = new Friends();
  n.name = name;
  n.sname = sname;
  print(n.name);

//---------------------List Using-----------------------------------

  List desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
  final firstDessert = desserts[0];
  print(firstDessert);

  desserts.add('cake');
  print(desserts);

  desserts.remove('donuts');
  print(desserts);

//---------------------Map Using-----------------------------------

  Map<String, int> calories = {
    'cake': 500,
    'donuts': 150,
    'cookies': 100,
  };

  final donutCalories = calories['donuts'];
  print("Calories of Dounuts :$donutCalories");
}

//---------------------Function Defining-----------------------------------

void marring(String name1, String name2) {
  if (name1.isEmpty || name2.isEmpty) {
    print("You should find a husband or wife.");
  } else {
    print("$name1 and $name2, You are Married Now.");
  }
}

//---------------------------Class Defining-----------------------------------

class Friends {
  late String name;
  late String sname;
//------------------------Constructor Defining---------------------------------
  //Friends(this.name, this.sname)
}
