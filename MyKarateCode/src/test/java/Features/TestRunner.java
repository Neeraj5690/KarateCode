package Features;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
	
	
	@Karate.Test
	Karate tagRun()
	{
		return Karate.run("Get").tags("@GetSmoke").relativeTo(getClass());
	}
	
	@Karate.Test
	Karate getAPI()
	{
		return Karate.run("/ABC/Get1").relativeTo(getClass());
	}

}
