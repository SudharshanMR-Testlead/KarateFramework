package Tests;

import org.junit.runner.RunWith;



import com.intuit.karate.junit5.Karate;


public class KarateTestRunner {
	@Karate.Test
	Karate testAll() {
	return Karate.run().relativeTo(getClass());
	}

}
