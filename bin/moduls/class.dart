import 'dart:async';

class Phone{
  late int id;
  late String name;
  late String dateModified;
  late List contact;

  Phone(this.id, this.name, this.dateModified, this.contact);



  //methods

  void sms(){}

  String infos() {
    return 'Name : $name \nId: $id \nDateModified: $dateModified \nContacts: $contact';
  }

}

class Person1 extends Phone {

  Person1() : super(866945154224, 'Xiamo Redmi Note 8 pro', '05.11.2021',
      ['Xurshidjon', 'Asliddin', 'Muhammadjon', 'Boburbek', 'Muzaffar', 'Abdulaziz']);


  @override
  void sms() {

    int sekund = 1;
    print('${contact[3]} is typing...');
    Timer.periodic(Duration(seconds: 3), (timer) {
      sekund--;
      print('Assalomu Alaykum Dostim yaxshimisan?');
      if (sekund == 0) {
        timer.cancel();

        int sekund1 = 1;
        print('\n                             ${contact[0]} is typing...');
        Timer.periodic(Duration(seconds: 3), (timer) {
          sekund1--;
          print(
              '                             Va Alaykum Assalom Men Yaxshiman... Qachon ko\'rishamiz?');
          if (sekund1 == 0) {
            timer.cancel();

            int sekund2 = 1;
            print('\n${contact[3]} is typing...');
            Timer.periodic(Duration(seconds: 3), (timer) {
              sekund2--;
              print('Bugun soat 09:00 da korishamiz Pdp da');
              if (sekund2 == 0) {
                timer.cancel();

                int sekund3 = 1;
                print('\n                             ${contact[0]} is typing...');
                Timer.periodic(Duration(seconds: 3), (timer) {
                  sekund3--;
                  print(
                      '                             Boldi kelishdik men ertaroq borib turaman');
                  if (sekund3 == 0) {
                    timer.cancel();

                  }
                });

              }
            });

          }
        });

      }
    });

  }


  @override
  String infos() {
    return super.infos();
  }

}