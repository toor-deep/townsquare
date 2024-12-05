final List<Activity> activities = [
  // Sports category
  Activity(
    title: 'Beach Yoga',
    time: '08:00',
    totalTime: '60 minutes',
    location: 'A',
    price: '€20',
    sportsLeft: '5 spots left',
    status: 'Join',
    matchType: 'Group',
    additionalInfo: 'Instructor: Sarah',
    type: 'sports',
  ),
  Activity(
    title: 'Reformer Pilates',
    time: '09:00',
    totalTime: '45 minutes',
    location: 'B',
    price: '15€',
    sportsLeft: '10 spots left',
    status: 'Join',
    matchType: 'Individual',
    additionalInfo: 'Instructor: David',
    type: 'sports',
  ),
  Activity(
    title: 'Swimming Class',
    time: '10:00',
    totalTime: '30 minutes',
    location: 'C',
    price: '€12',
    sportsLeft: '2 spots left',
    status: 'Sold Out',
    matchType: 'Group',
    additionalInfo: 'Instructor: James',
    type: 'sports',
  ),
  Activity(
    title: 'Reformer Pilates',
    time: '09:00',
    totalTime: '45 minutes',
    location: 'B',
    price: '€15',
    sportsLeft: '10 spots left',
    status: 'Join',
    matchType: 'Individual',
    additionalInfo: 'Instructor: David',
    type: 'sports',
  ),
  Activity(
    title: 'Swimming Class',
    time: '10:00',
    totalTime: '30 minutes',
    location: 'C',
    price: '15€',
    sportsLeft: '2 spots left',
    status: 'Sold Out',
    matchType: 'Group',
    additionalInfo: 'Instructor: James',
    type: 'sports',
  ),


  // Food category
  Activity(
    title: 'Cooking Workshop',
    time: '10:30',
    totalTime: '90 minutes',
    location: 'D',
    price: '€30',
    sportsLeft: '6 spots left',
    status: 'Join',
    matchType: 'Group',
    additionalInfo: 'Instructor: Chef Emma',
    type: 'food',
  ),
  Activity(
    title: 'Wine Tasting',
    time: '14:00',
    totalTime: '120 minutes',
    location: 'E',
    price: '€50',
    sportsLeft: '8 spots left',
    status: 'Join',
    matchType: 'Individual',
    additionalInfo: 'Sommelier: John',
    type: 'food',
  ),

  // Kids category
  Activity(
    title: 'Kids Football Class',
    time: '09:00',
    totalTime: '60 minutes',
    location: 'G',
    price: '€10',
    sportsLeft: '12 spots left',
    status: 'Join',
    matchType: 'Group',
    additionalInfo: 'Instructor: Coach Ben',
    type: 'kids',
  ),
  Activity(
    title: 'Art and Craft for Kids',
    time: '11:00',
    totalTime: '90 minutes',
    location: 'H',
    price: '€15',
    sportsLeft: '10 spots left',
    status: 'Join',
    matchType: 'Group',
    additionalInfo: 'Instructor: Mary',
    type: 'kids',
  ),
  Activity(
    title: 'Kids Swimming Class',
    time: '15:00',
    totalTime: '30 minutes',
    location: 'I',
    price: '€8',
    sportsLeft: '6 spots left',
    status: 'Join',
    matchType: 'Individual',
    additionalInfo: 'Instructor: Mike',
    type: 'kids',
  ),

  // Creative category
  Activity(
    title: 'Creative Painting',
    time: '12:00',
    totalTime: '120 minutes',
    location: 'J',
    price: '€25',
    sportsLeft: '6 spots left',
    status: 'Join',
    matchType: 'Group',
    additionalInfo: 'Instructor: Artist Leo',
    type: 'creative',
  ),


  // Popular category
  Activity(
    title: 'Zumba Dance',
    time: '18:00',
    totalTime: '50 minutes',
    location: 'M',
    price: '€18',
    sportsLeft: '8 spots left',
    status: 'Join',
    matchType: 'Group',
    additionalInfo: 'Instructor: Rachel',
    type: 'popular',
  ),
  Activity(
    title: 'Cycling Class',
    time: '19:00',
    totalTime: '45 minutes',
    location: 'N',
    price: '€20',
    sportsLeft: '7 spots left',
    status: 'Join',
    matchType: 'Group',
    additionalInfo: 'Instructor: Laura',
    type: 'popular',
  ),

  // Calm category
  Activity(
    title: 'Meditation Session',
    time: '08:00',
    totalTime: '30 minutes',
    location: 'P',
    price: '€10',
    sportsLeft: '15 spots left',
    status: 'Join',
    matchType: 'Group',
    additionalInfo: 'Instructor: Guru Ram',
    type: 'calm',
  ),
  Activity(
    title: 'Breathing Techniques',
    time: '09:00',
    totalTime: '45 minutes',
    location: 'Q',
    price: '€12',
    sportsLeft: '10 spots left',
    status: 'Join',
    matchType: 'Group',
    additionalInfo: 'Instructor: Emma',
    type: 'calm',
  ),
  Activity(
    title: 'Nature Walk',
    time: '10:00',
    totalTime: '60 minutes',
    location: 'R',
    price: '€5',
    sportsLeft: '20 spots left',
    status: 'Join',
    matchType: 'Group',
    additionalInfo: 'Guide: John',
    type: 'calm',
  ),
];

class Activity {
    final String title;
    final String time;
    final String totalTime;
    final String location;
    final String price;
    final String sportsLeft;
    final String status;
    final String matchType;
    final String additionalInfo;
    final String type; // New field for activity type (sports, food, etc.)

    Activity({
      required this.title,
      required this.time,
      required this.totalTime,
      required this.location,
      required this.price,
      required this.sportsLeft,
      required this.status,
      required this.matchType,
      required this.additionalInfo,
      required this.type, // Initialize the new field
    });
  }
