public class User {

    private int id;
    private String fName;
    private String lName;
    private String email;
    private String password;
    private String shippingAddress;
    private String role;

    public User(String fName, String lName, String email, String password, String shippingAddress, String role, boolean isActive, int id) {
        this.fName = fName;
        this.lName = lName;
        this.email = email;
        this.password = password;
        this.shippingAddress = shippingAddress;
        this.role = role;
        this.isActive = isActive;
        this.id = id;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setIsActive(boolean isActive) {
        this.isActive = isActive;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getfName() {
        return fName;
    }

    public void setfName(String fName) {
        this.fName = fName;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getShippingAddress() {
        return shippingAddress;
    }

    public void setShippingAddress(String shippingAddress) {
        this.shippingAddress = shippingAddress;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    private boolean isActive;
}