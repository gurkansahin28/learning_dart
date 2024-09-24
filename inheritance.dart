void main(List<String> args) {
  MyCar myCar =
      MyCar(energySource: "Electricity", tireCount: 102, seatCount: 76);

  print(myCar.tireCount);
  print(myCar.getTireCount());
  print(myCar.seatCount);
  print(myCar.getSeatCount());
  myCar.start(); // I got my car started with the Energy Source!
  myCar.stop(); // I got my car stopped for fear of wasting the Energy Source!
}
/** The End of MAIN ***************************************************** */

//----INHERITED CLASSES--------------------------------------
//---1. Abstract class Vehicles
abstract class Vehicles {
  String energySource;

  Vehicles(this.energySource);

  void start(); // Abstract method
  void stop(); // Abstract method
}
//----------------------------------------------------------------------------

//---2. Abstract class GroundVehicles, extending Vehicles
abstract class GroundVehicles extends Vehicles {
  GroundVehicles(String energySource) : super(energySource);
}
//----------------------------------------------------------------------------

//---3. Abstract class Wheelers, extending GroundVehicles
abstract class Wheelers extends GroundVehicles {
  int tireCount;
  int seatCount;
  Wheelers(String energySource, this.tireCount, this.seatCount)
      : super(energySource);
}

//----------------------------------------------------------------------------
//---4. Abstract class Cars, extending Wheelers
abstract class Cars extends Wheelers {
  int tireCount;
  int seatCount;
  Cars(String energySource, this.tireCount, this.seatCount)
      : super(energySource, tireCount, seatCount);
}

//----------------------------------------------------------------------------
//---5. Concrete class MyCar, extending Cars
class MyCar extends Cars {
  MyCar({required energySource, required tireCount, required seatCount})
      : super(energySource, tireCount, seatCount);

  int getTireCount() => tireCount;
  int getSeatCount() => seatCount;

  @override
  void start() {
    print("I got my car started with $energySource!");
  }

  @override
  void stop() {
    print("I got my car stopped for fear of wasting $energySource!");
  }
}
//----------------------------------------------------------------------------

/** UML
-----------------------
|Vehicles: abstract   |
|---------------------|
|+energySource: String|
|---------------------|
|+start(): void       |
|*stop(): void        |
-----------------------

--------------------------
|GroundVehicles: abstract|
--------------------------

--------------------
|Wheelers: abstract|
--------------------

-----------------
|Cars: abstract |
|----------------
|+tireCount: int|
|+seatCount: int|
-----------------

---------------------
|MyCar: concrete    |
|-------------------|
|tires: int         |
|seats: int         |
|-------------------|
|tireCount: int, get|
|seatCount: int, get|
|-------------------|
|start(): void      |
|stop(): void       |
---------------------

 */
