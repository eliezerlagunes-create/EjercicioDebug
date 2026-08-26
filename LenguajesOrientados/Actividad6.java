package LenguajesOrientados;

public class Actividad6 {
    public static void main(String[] args) {
        /*char letra = 'A';
        int codigo = letra;

        char siguiente = (char) (letra + 1);
        System.out.println(siguiente);
    } /* */
    /*char letra = 'A';
    int codigo = letra;
    for (int i = 0; i < 26  ; i++) {
        char siguiente = (char) (letra + i);
        System.out.println(siguiente);
        /* */
        /*
        double precioCOnIVA= 149.99;
        int precioRedondeado = (int) precioCOnIVA;

        System.out.println(precioRedondeado);  */
        int [] notas={90, 85, 77, 92};
        int suma = 0;
        for (int i = 0; i < notas.length; i++) {
            System.out.println("Posicion" + i + ": " + notas[i]);
            suma += notas[i];
        }
        System.out.println("Suma: " + suma);
    }
    }
