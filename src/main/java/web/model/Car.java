package web.model;


public class Car {
    private String name;
    private String colour;
    private int number;

    public Car(String name, String colour, int number) {
        this.name = name;
        this.colour = colour;
        this.number = number;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getColour() {
        return colour;
    }

    public void setColour(String colour) {
        this.colour = colour;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    @Override
    public String toString() {
        return "Car{" +
                "name='" + name + '\'' +
                ", colour='" + colour + '\'' +
                ", number=" + number +
                '}';
    }
}
