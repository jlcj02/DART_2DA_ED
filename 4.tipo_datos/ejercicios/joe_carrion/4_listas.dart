main(){
///Lista de elementos

List<int> lista = [1,2,3,4,5];

print(lista);

print(lista.first);
print(lista.last);

print(lista[0]);
print(lista[4]);

lista.add(6);
print(lista);

final valor1 = lista.remove(6);

print(valor1);
print(lista);
final valor2 = lista.remove(60);
print(valor2);


 final list5 = [1, 2, 3, 4, 5];
  print(list5.length); // 5
  print(list5.first); // 1
  print(list5.last); // 5
  print(list5.reversed); // (5, 4, 3, 2, 1)
  print(list5.isEmpty); // false
  print(list5.isNotEmpty); // true
  print(list5.reversed); // (5, 4, 3, 2, 1)

}