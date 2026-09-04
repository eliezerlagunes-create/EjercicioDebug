package LenguajesOrientados;
import java.util.Scanner;

public class Actividad9 {
     
    public static boolean esPar (int num){
        return num % 2==0;
    }
    public static double area(double radio){
        return Math.PI * Math.pow(radio, 2);
    }
    public static double convertir(double celsius){
        return celsius * 1.8 + 32;
    }
    public static void main(String[] args) {
        Scanner teclado= new Scanner(System.in);
        System.out.println("Dame un numero:");
        int numero = teclado.nextInt();

        if(esPar(numero)){
            System.out.println("El numero " + numero + " es par ");
        } else {
            System.out.println("El numero " + numero + " es impar");
        }

        System.out.println("Ingresa el radio del circulo: ");
        double radioIngresado = teclado.nextDouble();
        double areaCirculo = area(radioIngresado);
        System.out.println("El area del circulo con radio: " + radioIngresado + " es " + areaCirculo);

        System.out.println("Dame una temperatura en Celsius: ");
        double celcius = teclado.nextDouble();
        double conversion = convertir(celcius);
        System.out.println("La temperatura convertida a Farenheit es: " + conversion);
    }
}