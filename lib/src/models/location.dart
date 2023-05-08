import 'location_fact.dart';

class Location{
  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts; 
  Location(this.id, this.name, this.imagePath, this.facts);
  
  static List<Location> fetchall(){
    return [
      Location(1, 'Machester', 'assets/images/kiyomizu.jpeg',[
        LocationFact('Introduction', 'Manchester is a beautiful city in the north west of England.'),    
        LocationFact('Sports','Machester is famous for its football clubs and their massive stadium'),
      ]),
      Location(2, 'Xiamen', 'assets/images/kiyomizu.jpeg',[
        LocationFact('Introduction', 'Manchester is a beautiful city in the north west of England.'),    
        LocationFact('Sports','Machester is famous for its football clubs and their massive stadium'),
      ]),
      Location(3, 'Shenzhen', 'assets/images/kiyomizu.jpeg',[
        LocationFact('Introduction', 'Manchester is a beautiful city in the north west of England.'),    
        LocationFact('Sports','Machester is famous for its football clubs and their massive stadium'),
      ]),
    ];
  }

  static fetchByID(int locationID){
    List<Location> locations = fetchall();
    for (var i=0; i<locations.length; i++){
      if (locations[i].id == locationID){
        return locations[i];
      }
    }
  }

}