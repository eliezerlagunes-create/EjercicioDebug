package LenguajesOrientados;
import java.util.Scanner;
public class Actividad7 {
    public static void main(String[] args) {
        /*int[] numeros_enteros = {10, 15, 20, 25, 30};
        for (int i = 0; i < numeros_enteros.length; i++) {
            System.out.println("Número entero  "+i+" = "+numeros_enteros[i]);
        } >/* */ 
        
        Scanner uno= new Scanner(System.in);
        double[] calificaciones= new double[5];
        double suma=0;
        double promedio=0;
        for (int i = 0; i < calificaciones.length; i++) {
            System.out.println("Ingrese la calificación ");
            calificaciones[i]=uno.nextDouble();
            suma=suma+calificaciones[i];
        }
        promedio=suma/calificaciones.length;
        for (int i = 0; i < calificaciones.length; i++) {
            System.out.println("Calificación "+i+" = "+calificaciones[i]);
        }
        System.out.println("Suma de calificaciones = "+suma);
        System.out.println("Promedio de calificaciones = "+promedio);
        uno.close();
    }
}
