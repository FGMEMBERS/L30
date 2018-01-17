# doors ============================================================
var BDoor = aircraft.door.new( "/sim/model/door-positions/BDoor", 5, 0 );

var openBombDoors = func()
{
   BDoor.toggle();
}

var SDoor = aircraft.door.new( "/sim/model/door-positions/SDoor", 5, 0 );

var openSpyDoors = func()
{
   SDoor.toggle();
}

var TDoor = aircraft.door.new( "/sim/model/door-positions/TDoor", 5, 0 );

var openCabinDoors = func()
{
   TDoor.toggle();
}
