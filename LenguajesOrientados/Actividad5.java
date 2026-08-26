package LenguajesOrientados;
import java.util.Scanner;

public class Actividad5 {
    public static void main(String[] args) {
        double peso = 68;
        double estatura = 1.70;
        double imc = peso / (estatura * estatura);
        
        if (imc < 18.5) {
            System.out.println("Bajo peso");
        } else if (imc < 25) {
            System.out.println("Peso normal");
        } else {
            System.out.println("Sobrepeso");
        }
        
        System.out.println("IMC: " + imc);
    }
}
