import "dart:io";
List<List<dynamic>> inventario = [];
void agregarpeluche() {
  print("por favor ingrese el nombre del peluche y su cantidad");
 print("ingrese el nombre del pelcuhce");
String nombrepeluche= stdin.readLineSync()!;
  print("ingrese la cantidad de peluches $nombrepeluche");
 int cantidadpeluche= int.parse(stdin.readLineSync()!);
  print("cual es el precio individual de $nombrepeluche?");
double valorpeluche= double.parse(stdin.readLineSync()!); 
  
  List <dynamic>peluche= [nombrepeluche, cantidadpeluche,valorpeluche];
  inventario.add (peluche);
}
void buscarpeluche(){
   print("Ingrese el nombre del peluche: que decea buscarr:");
  String nombre = stdin.readLineSync()!;
  bool encontrado = false;
  
  for (var peluche in inventario) {
    if (peluche[0] == nombre) {
      print("Nombre: ${peluche[0]}, Cantidad: ${peluche[1]}, Valor: \$${peluche[2]}");
      encontrado = true;
      break;
    }
  } 
  if(!encontrado){
    print ("ese peluche no existe");
  }
}
void eliminarpeluche() {
  print("Ingrese el nombre del peluche:");
  String nombre = stdin.readLineSync()!;
  bool eliminado = false;

  for (var peluche in inventario) {
    if (peluche[0] == nombre) {
      inventario.remove(peluche);
      eliminado = true;
      print("Peluche eliminado.");
      break;
    }
  }
  if (!eliminado) {
    print("ese peluche no existe");
  }
}
void mostrarinventario(){
for (var peluche in inventario){
print("el inventario completo es:${peluche[0]}, Cantidad: ${peluche[1]}, Valor: \$${peluche[2]}");
}
}
void realizarventa() {
  print("Ingrese el nombre del peluche:");
  String nombre = stdin.readLineSync()!;
  bool encontrado = false;
  for (var peluche in inventario) {
    if (peluche[0] == nombre) {
      print("Ingrese la cantidad a vender:");
      int cantidadventa = int.parse(stdin.readLineSync()!);
      if (cantidadventa <= peluche[1]) {
        peluche[1] -= cantidadventa;
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
  for (var peluche in inventario){
  double gananciassubtotales= peluche[2]*peluche[1];
print("las ganancias totales por peluche son: nombre:${peluche[0]} ventas ${peluche[1]} ganancias $gananciassubtotales");
  gananciastotales+=gananciassubtotales;
  }
  
print("las ganancias totales son $gananciastotales");
}
void main(){
  bool salir= false;
  while (!salir){
  print("Menu principal gestor de inventarios\n por favor seleccione la opcion que decea con su respectivo numero\n1.agregar\n2.buscar\n3.eliminar\n4.mostrar inventario\n5.realizar venta\n6.mostrar ganancias totales\n7.salir");
int opcion= int.parse(stdin.readLineSync()!);
    switch (opcion){
      case 1:
      agregarpeluche();
        break;
      case 2: 
        buscarpeluche();
        break;
      case 3:
        eliminarpeluche();
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
        print("gracias por su tiempo"); 
        salir=true;
        break;
      default:
        print("opcion invalida intente de nuevo por favor");
        break;
    }
  }
}
