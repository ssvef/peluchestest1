inventario\n3.realizar venta\n4.mostrar ganancias totales\n5.salir");
    int opciones1=int.parse(stdin.readLineSync()!);
      if (opciones1==1){
        print("por favor seleccione la opccion deseada\n1.agregar peluchito\n2.buscar peluchito\n3.eliminar peluchito\n4.salir\n5.volver atras");
        int opciones2=int.parse(stdin.readLineSync()!);
      if(opciones2==1){
          Map<String,int>agregar={};
          bool nomas= false;
          double valortotal=0.0;
          while(!nomas){
          print("por favor ingrese el nombre del peluche(compuesto de una sola palabra) y su cantidad");
          print("ingrese el nombre del pelcuhce");
          String nombrepeluche= stdin.readLineSync()!;
          print("ingrese la cantidad de peluches $nombrepeluche");
          int cantidadpeluches= int.parse(stdin.readLineSync()!);
          agregar[nombrepeluche]= cantidadpeluches;
          print("cual es el precio individual de $nombrepeluche?");
          double valorpeluche= double.parse(stdin.readLineSync()!); 
          double valorsubtotal= valorpeluche*cantidadpeluches;
          valortotal+=valorsubtotal;
          print("decea agregar mas peluches?\n1.si\n2.no");
          int agregarmas= int.parse(stdin.readLineSync()!);
          if(agregarmas==1){
          print("está bien");
          }else if(agregarmas==2|| agregarmas>2){
          nomas=true;
          print("lista de peluches");
          agregar.forEach((key, value) {
          print("$key, cantidad: $value");
          },);
          print("Valor total de todos los peluches: \$${valortotal.toStringAsFixed(2)}");
          }    
          }}else if (opciones2==2){
          //TODO LO RELACIONADO A BUSCAR PELUCHITO
        }else if(opciones2==3){
          //TODO LO RELACIONADO A ELIMINAR PELUCHE 
        }else if (opciones2<1||opciones2>5){
          print("numero invalido, por favor ingrese un numero del 1 al 5");
        }else if(opciones2==5){
          continue;
        }else if(opciones2==4){
          print("gracias por su tiempo, hasta luego");
          salir=true;}
      }if (opciones1==2){
      print("mama tengo hambre");
      //TODO LO RELACIONADO CON MOSTRAR INVENTARIO
    }if (opciones1==3){
      //TODO LO RELACIONADO A REALIZAR VENTA
    }if (opciones1==4){
      //TODO LO RELACIONADO A MOSTRAR GANANCIAS TOTALES
    }if (opciones1==5){
      print("gracias por su tiempo hasta luego");  
      salir=true;
    } 
  }
} 