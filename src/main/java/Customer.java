package Model;
import java.io.*;
import javax.servlet.annotation.*;
public class Customer {
    private String name, dob, address, image;

    public Customer(String name, String dob, String address, String image) {
        this.name = name;
        this.dob = dob;
        this.address = address;
        this.image = image;
    }

    public String getName() { return name; }
    public String getDob() { return dob; }
    public String getAddress() { return address; }
    public String getImage() { return image; }
}