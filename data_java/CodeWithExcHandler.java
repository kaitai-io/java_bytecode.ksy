import java.io.IOException;

class CodeWithExcHandler {
    public static void oops() {
        int[] a = new int[42];
        try {
            a[80] = 1;
        } catch (IndexOutOfBoundsException e) {
            System.err.println("IndexOutOfBoundsException: " + e.getMessage());
        }            
    }
}
