package murach.data;

import murach.business.User;
import java.util.ArrayList;
import java.util.List;

public class UserDB {
    private static List<User> users = new ArrayList<>();

    public static void insert(User user) {
        users.add(user);
        System.out.println("User saved: " + user.getFirstName() + " " + user.getLastName());
    }

    public static List<User> getAllUsers() {
        return users;
    }
}
