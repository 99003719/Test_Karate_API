package Tests.users;

import com.intuit.karate.junit5.Karate;

class TestRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("Filter_by_id" +
                "").relativeTo(getClass());
    }

}
