package model;

public class Customers {
    private String name;
    private String dateOfBirth;
    private String diaChi;
    private String image;

    public Customers() {
    }

    public Customers(String name, String dateOfBirth, String diaChi, String image) {
        this.name = name;
        this.dateOfBirth = dateOfBirth;
        this.diaChi = diaChi;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Customers " +
                "name='" + name + '\'' +
                ", dateOfBirth='" + dateOfBirth + '\'' +
                ", diaChi='" + diaChi + '\'' +
                ", image='" + image ;
    }
}


