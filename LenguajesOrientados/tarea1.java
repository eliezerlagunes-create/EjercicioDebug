package LenguajesOrientados;
import java.util.Scanner;

public class tarea1 {

    public static void main(String[] args) {
 
        Scanner sc = new Scanner(System.in);
 
        // EJERCICIO 1 - Declaracion de variables
        /*
        String nombreProducto = "Teclado mecanico";
        double precio = 799.50;
        int cantidadInventario = 25;
        boolean disponible = true;
 
        System.out.println("Nombre del producto: " + nombreProducto);
        System.out.println("Precio: $" + precio);
        System.out.println("Cantidad en inventario: " + cantidadInventario);
        System.out.println("Disponible: " + disponible);
        /*  */

        // EJERCICIO 2 - Registro con Scanner

        /*  *
        System.out.print("Ingresa tu nombre completo: ");
        String nombreCompleto = sc.nextLine();
 
        System.out.print("Ingresa tu edad: ");
        int edadUsuario = sc.nextInt();
 
        System.out.print("Ingresa tu promedio actual: ");
        double promedioUsuario = sc.nextDouble();
 
        System.out.println();
        System.out.println("Nombre: " + nombreCompleto);
        System.out.println("Edad: " + edadUsuario);
        System.out.println("Promedio: " + promedioUsuario);
        /* */
 

        // EJERCICIO 3 - Uso de if / else if
        /*
        System.out.print("Ingresa tu edad: ");
        int edadBoleto = sc.nextInt();
 
        String categoria;
        int precioBoleto;
 
        if (edadBoleto >= 6 && edadBoleto <= 12) {
            categoria = "Nino";
            precioBoleto = 45;
        } else if (edadBoleto >= 13 && edadBoleto <= 59) {
            categoria = "Adulto";
            precioBoleto = 85;
        } else {
            categoria = "Adulto mayor";
            precioBoleto = 50;
        }
       
        System.out.println("Categoria: " + categoria);
        System.out.println("Precio del boleto: $" + precioBoleto);
         /*  */

        // EJERCICIO 4 - Uso de for

        /* 
        System.out.println("MILLAS" + "\t" + "KILOMETROS");

        for (int millas = 1; millas <= 10; millas++) {
            double kilometros = millas * 1.60934;
            double redondeado = Math.round(kilometros * 100) / 100.0;
            System.out.println(millas + "\t" + redondeado);
        }
        /* */

        // EJERCICIO 5 - Uso de while
        
        /* 
        int suma = 0;
        int contador = 0;
 
        System.out.print("Ingresa un numero (-1 para terminar): ");
        int numero = sc.nextInt();
 
        while (numero != -1) {
            suma = suma + numero;
            contador++;
 
            System.out.print("Ingresa un numero (-1 para terminar): ");
            numero = sc.nextInt();
        }
        
        System.out.println();
        System.out.println("Suma total: " + suma);
        System.out.println("Numeros ingresados: " + contador);
        /* */
 

        // EJERCICIO 6 - Uso de arreglos

        
        double[] calificaciones = {8.5, 9.0, 7.25, 10.0, 6.75};
 
        double sumaCalif = 0;
        double masBaja = calificaciones[0];
        double masAlta = calificaciones[0];
 
        for (int i = 0; i < calificaciones.length; i++) {
            sumaCalif = sumaCalif + calificaciones[i];
 
            if (calificaciones[i] < masBaja) {
                masBaja = calificaciones[i];
            }
            if (calificaciones[i] > masAlta) {
                masAlta = calificaciones[i];
            }
        }
 
        double promedioCalif = sumaCalif / calificaciones.length;
 
        System.out.println("Promedio: " + promedioCalif);
        System.out.println("Calificacion mas baja: " + masBaja);
        System.out.println("Calificacion mas alta: " + masAlta);
        
 
        sc.close();
    }
}