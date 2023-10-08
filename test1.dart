// Integrantes: Castrillon Camilo, Vega Stiwarth
import "dart:io";
List<List<dynamic>> inventory = [];
//main menu
void main(){
  int option;
  do{ 
  print("\nMenu principal gestor de inventarios\nPor favor seleccione acción a realizar\n\n1.Agregar\n2.Buscar\n3.Eliminar\n4.Mostrar inventario\n5.Realizar venta\n6.Mostrar ganancias totales\n7.Salir\n");
 option = int.parse(stdin.readLineSync()!);
    switch (option){
      case 1:
      addplushtoy();
        break;
      case 2: 
        lookforplushtoy();
        break;
      case 3:
        deleteplushtoy();
        break;
      case 4:
        mostrarinventario();
        break;
      case 5:
       realizarventa();
        break;
      case 6:
        mostrargananciastotales();
        break;
      case 7:
        print("\nEl programa se cerrará. Gracias por su tiempo"); 
        break;
      default:
        print("\nOpcion invalida intente de nuevo por favor.\n");
        break;
    }
  }while (option != 7);  
}

void addplushtoy() {
  String toyname;
  int toyamount, toyprice,option;
  do{
  print("\nA continuación debe ingresar los siguientes datos para registrar el peluche");
  print("Ingrese el nombre del peluche");
     toyname= stdin.readLineSync()!;
  print("\nIngrese la cantidad en stock para el peluche \"$toyname\"");
    toyamount= int.parse(stdin.readLineSync()!);
  print("\nIngrese el valor unitario para el peluche \"$toyname\"");
     toyprice= int.parse(stdin.readLineSync()!); 
  List <dynamic>plushtoy= [toyname, toyamount,toyprice,1];//creacion de lista para guardar los peluches, dinamica, la estatica es inventory.
  inventory.add (plushtoy);
  for(var plushtoy in inventory ){
    if (plushtoy[0] == toyname) {
    print("\nEl peluche $toyname fue registrado correctamente.\n");
  }else{
      print("Ocurrio un error en el registro, intente nuevamente.");
  }
}
    print("¿Desea añadir un nuevo peluche? Responda 1 para Si o 2 para No\n Si responde que no regresará al menu principal");
    option=int.parse(stdin.readLineSync()!);
  }while(option==1);
}

void lookforplushtoy(){
  String toyname;
  int option=1;
  do{
    print("\nIngrese el nombre del peluche a consultar");
    toyname = stdin.readLineSync()!;
  print("\nLISTA DE PELUCHES EN STOCK");
   for(var plushtoy in inventory ){
    if (plushtoy[0] == toyname) {
   print("Se encontró la siguiente existencia:\n\nNombre: ${plushtoy[0]}, Cantidad: ${plushtoy[1]}, Valor: \$${plushtoy[2]} pesos\n\n¿Desea generar una nueva consulta?Responda 1 para Si o 2 para No\n Si responde que no regresará al menu principal");
      option=int.parse(stdin.readLineSync()!);
    }else{
      print ("El nombre $toyname no existe en el inventario.\n¿Desea generar una nueva consulta?Responda 1 para Si o 2 para No\n Si responde que no regresará al menu principal");
      option=int.parse(stdin.readLineSync()!);
    }
  }
}while(option==1);
}

void deleteplushtoy() {
  
  int option=1,warning;
  String toyname;
  do{
    print("********!ALERTA¡********\n\nAcaba de ingresar al menú de eliminación tenga presente que este menú tiene dos opciones de eliminación.\nLa primera opcion consiste en eliminar el producto dejando un registro de existencia para auditoria.\nEl segundo tipo de eliminación es una eliminacion definitiva, no quedará registro de la existencia del producto.\nA continuación digite el numero 1 si comprende esta información para prodeceder al menu de opciones.\n");
    warning=int.parse(stdin.readLineSync()!);
  }while(warning!=1);
  do{
print("*****MENU DE ELIMINACION DE PELUCHES.*****\n");
if(inventory.isEmpty==true){
    print ("Actualmente no hay productos en stock.\nRecomendamos agregar nuevos peluches.\nIngrese un numero diferente a 1 para regresar al menu principal.");
      option=int.parse(stdin.readLineSync()!);
}else{
  print("\nIngrese el nombre del peluche a eliminar:\n");
    toyname = stdin.readLineSync()!;
   for (var plushtoy in inventory) { 
       if(plushtoy[0] == toyname){ 
        inventory.remove(plushtoy);
          print("Peluche eliminado.\n¿Desea generar una nueva consulta?Responda 1 para Si o 2 para No.Si responde que no regresará al menu principal");
         option=int.parse(stdin.readLineSync()!);
   }else{
         print ("\nEl nombre $toyname no existe en el inventario.\n\n¿Desea generar una nueva consulta para eliminar el peluche?Responda 1 para Si o 2 para No\n Si responde que no regresará al menu principal");
	option=int.parse(stdin.readLineSync()!);} 
  } 
}
  }while(option!=1);
}
 void mostrarinventario(){
for (var plushtoy in inventory){
print("el inventario completo es:${plushtoy[0]}, Cantidad: ${plushtoy[1]}, Valor: \$${plushtoy[2]}");
}
 }

void realizarventa() {
  print("Ingrese el nombre del peluche:");
  String nombre = stdin.readLineSync()!;
  bool encontrado = false;
  for (var plushtoy in inventory) {
    if (plushtoy[0] == nombre) {
      print("Ingrese la cantidad a vender:");
      int cantidadventa = int.parse(stdin.readLineSync()!);
      if (cantidadventa <= plushtoy[1]) {
        plushtoy[1] -= cantidadventa;
        print("Venta realizada.");
      } else {
        print("No hay suficientes peluches en inventario.");
      }encontrado = true;
      break;
    }
  }if (!encontrado){
  }
}
void mostrargananciastotales() {
  double gananciastotales= 0.0;
  for (var plushtoy in inventory){
  double gananciassubtotales= plushtoy[2]*plushtoy[1];
print("las ganancias totales por peluche son: nombre:${plushtoy[0]} ventas ${plushtoy[1]} ganancias $gananciassubtotales");
  gananciastotales+=gananciassubtotales;
  }
  
print("las ganancias totales son $gananciastotales");
}
