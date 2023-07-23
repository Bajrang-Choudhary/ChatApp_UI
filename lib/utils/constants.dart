
// This is the list of the messages for demo.
// In real app messages are stored in database

List messages = [
  {
    'name': 'Bajrang Choudhary',
    'uid': 1234,
    'text':'Oh! Great...',
    'time': DateTime.now()
  },
  {
    'name': 'Rupanshi',
    'uid': 1235,
    'text':'Hi! I am going to home, next week............',
    'time': DateTime.now().subtract(const Duration(seconds: 10))
  },
  {
    'name': 'Arjav Verma',
    'uid': 1236,
    'text':'Hi, Rupanshi',
    'time': DateTime.now().subtract(const Duration(seconds: 20))
  },
  {
    'name': 'Rupanshi',
    'uid': 1235,
    'text':'Thanks!!',
    'time': DateTime.now().add(const Duration(seconds: 10
    ))
  },
  {
    'name': 'Bajrang Choudhary',
    'uid': 1234,
    'text':'Welcome',
    'time': DateTime.now().add(const Duration(seconds: 20))
  }
];