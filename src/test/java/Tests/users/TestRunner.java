package Tests.users;

import com.intuit.karate.junit5.Karate;

class TestRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("Validate_item_present_in_inventory").relativeTo(getClass());
    }

}
