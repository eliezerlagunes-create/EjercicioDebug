package LenguajesOrientados;
public class ClaseDebug {

    public static void main(String[] args) {

        // Calificaciones obtenidas por un alumno.
        double[] calificaciones = {
                8.5, 9.0, 5.5, 7.0, 10.0
        };

        System.out.println("=== SISTEMA DE CALIFICACIONES ===");

        // Calculamos el promedio.
        double promedio = calcularPromedio(calificaciones);

        // Buscamos la calificación más alta.
        double mayor = obtenerCalificacionMayor(calificaciones);

        // Contamos cuántas calificaciones están aprobadas.
        int aprobadas = contarAprobadas(calificaciones);

        // Determinamos el estatus final del alumno.
        String estatus = obtenerEstatus(promedio);

        System.out.println("Promedio: " + promedio);
        System.out.println("Calificación mayor: " + mayor);
        System.out.println("Materias aprobadas: " + aprobadas);
        System.out.println("Estatus: " + estatus);
    }

    /**
     * Calcula el promedio de las calificaciones.
     *
     * @param calificaciones arreglo de calificaciones
     * @return promedio calculado
     */
    public static double calcularPromedio(double[] calificaciones) {

        double suma = 0;

        for (int i = 0; i < calificaciones.length; i++) {

            suma = suma + calificaciones[i];
        }

        return suma / calificaciones.length;
    }

    /**
     * Obtiene la calificación más alta.
     *
     * @param calificaciones arreglo de calificaciones
     * @return calificación mayor
     */
    public static double obtenerCalificacionMayor(double[] calificaciones) {

        double mayor = 0;

        for (int i = 0; i < calificaciones.length; i++) {

            if (calificaciones[i] > mayor) {

                mayor = calificaciones[i];
            }
        }

        return mayor;
    }

    /**
     * Cuenta cuántas calificaciones están aprobadas.
     *
     * Se considera aprobatoria una calificación mayor o igual a 6.
     *
     * @param calificaciones arreglo de calificaciones
     * @return cantidad de calificaciones aprobadas
     */
    public static int contarAprobadas(double[] calificaciones) {

        int contador = 0;

        for (double calificacion : calificaciones) {

            if (calificacion > 6) {

                contador++;
            }
        }

        return contador;
    }

    /**
     * Determina el estatus académico del alumno.
     *
     * @param promedio promedio del alumno
     * @return Aprobado o Reprobado
     */
    public static String obtenerEstatus(double promedio) {

        if (promedio >= 6) {

            return "Aprobado";
        }

        return "Reprobado";
    }
    System.out.println("Hola mundo");
}
