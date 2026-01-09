package Tests.users;

import com.intuit.karate.junit5.Karate;

class TestRunner {
    
    @Karate.Test
    Karate testUsers() {
        return Karate.run("Add_item_non_existing_id_and_validate_the_added_item" +
                "").relativeTo(getClass());
    }

}
