package LenguajesOrientados;
import java.util.Scanner;
public class LeerNombre {
    public static void main(String[] args) {
        /*
        Scanner dato=new Scanner (System.in);
        System.out.println("Escribe tu nombre:");
        String nombre=dato.nextLine();
        System.out.println("Tu nombre es: " + nombre);
        dato.close();
        /* */
        /*  */
        /*Scanner dato=new Scanner (System.in);
        System.out.println("Dame un numero:");
        int numero=dato.nextInt();
        System.out.println("El numero es: " + numero);
        dato.close();
        /* */
        Scanner dato=new Scanner (System.in);
        for (int i = 1; i <= 3; i++) {
            System.out.println("\nPersona " + i + ":");
            System.out.println("Dame tu nombre:");
            String nombre = dato.next();
            System.out.println("Dame tu peso en kg:");
            double peso = dato.nextDouble();
            System.out.println("Dame tu estatura en metros:");
            double estatura = dato.nextDouble();
            double imc = peso / (estatura * estatura);
            String resultado;
            if (imc < 18.5) {
                resultado = "Bajo peso";
            } else if (imc < 25) {
                resultado = "Peso normal";
            } else {
                resultado = "Sobrepeso";
            }
            System.out.println(nombre + " - IMC: " + imc + " (" + resultado + ")");
        }
        dato.close();
    }
}
