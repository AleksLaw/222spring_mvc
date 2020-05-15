package web.service;

import web.model.Car;

import java.util.ArrayList;
import java.util.List;

public class Service {
    private List<Car> carList;

    public List<Car> getCar() {
        Car car1 = new Car("BMV", "green", 1);
        Car car2 = new Car("Ford", "red", 2);
        Car car3 = new Car("Mazda", "black", 3);
        Car car4 = new Car("Opel", "blue", 4);
        carList= new ArrayList<>();
        carList.add(car1);
        carList.add(car2);
        carList.add(car3);
        carList.add(car4);
        return carList;

    }

}
