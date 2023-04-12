package Features;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
	
	@Karate.Test
	Karate getAPI()
	{
		return Karate.run("Get").relativeTo(getClass());
	}

}
