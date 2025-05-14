package Utils;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Utils {
	
    public static String hashSHA256(String password) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] hashBytes = md.digest(password.getBytes());
            StringBuilder sb = new StringBuilder();
            for (byte b : hashBytes) {
                sb.append(String.format("%02x", b));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }
    
    public static boolean checkPass(String claveOriginal, String hashAlmacenado) {
        String hashDeLaClave = hashSHA256(claveOriginal);
        return hashDeLaClave.equals(hashAlmacenado);
    }

}
