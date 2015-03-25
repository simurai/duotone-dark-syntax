import java.util.Map;
import java.util.TreeSet;

public class GetEnv {
  /**
   * let's test generics
   * TODO:
   * @param args the command line arguments



   */
  public static void main(String[] args) {
    // get a map of envireonment variables
    Map<String, String> env = System.getenv();
    // build a sorted set out of the keys and iterate
    for(String k: new TreeSet<String>(env.keySet())) {
      System.out.printf("%s = %s\n", k, env.get(k));
    }
  }    }
