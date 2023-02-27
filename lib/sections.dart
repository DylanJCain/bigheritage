class SectionInfo {
  final int position;
  final String name;
  final String iconImage;
  final String description;
  final String audio;
  final List<String> images;

  SectionInfo(
    this.position, {
    required this.name,
    required this.iconImage,
    required this.description,
    required this.images,
    required this.audio,
  });
}

List<SectionInfo> sections = [
  SectionInfo(1,
      name: 'Street Scene',
      iconImage: 'assets/street.jpg',
      description: "Welcome to Dock Lane in the 1940s!",
      images: [],
      audio: 'audio/street.mp4'),
  SectionInfo(2,
      name: 'The Teleprinter',
      iconImage: 'assets/teleprinter.jpg',
      description:
          "Forming the backbone of the communication of Western Approaches, these machines were essential!",
      images: [],
      audio: 'audio/teleprinter.mp4'),
  SectionInfo(3,
      name: 'The Switchboards',
      iconImage: 'assets/switchboard.jpg',
      description:
          "Controlling all the phonelines in the building, our switchboards kept us talking to the right people.",
      images: [],
      audio: 'audio/switchboards.mp4'),
  SectionInfo(4,
      name: 'The Radio Room',
      iconImage: 'assets/radioroom.jpg',
      description:
          "The machines in this room provided us with a way to contact our ships at sea. It also helped us to detect and locate the enemy U-boats.",
      images: [],
      audio: 'audio/radioroom.mp4'),
  SectionInfo(5,
      name: 'The Power Corridor',
      iconImage: 'assets/powercorridor.jpg',
      description: "The essentials for life underground are located here.",
      images: [],
      audio: 'audio/powercorridor.mp4'),
  SectionInfo(6,
      name: 'The Merchant Navy Room',
      iconImage: 'assets/merchantnavy.jpg',
      description:
          "Dedicated to our Merchant Navy, the civilian men and women who served on the Atlantic Ocean in conditions just as bad as the Royal Navy.",
      images: [],
      audio: 'audio/merchant.mp4'),
  SectionInfo(7,
      name: 'The Arctic Convoys Room',
      iconImage: 'assets/arcticconvoy.jpg',
      description:
          "This is one of our newest exhibitions. Dedicated to the brave Men who served in the icy arctic waters.",
      images: [],
      audio: 'audio/arcticconvoy.mp4'),
  SectionInfo(8,
      name: 'The Main Operations Room',
      iconImage: 'assets/operationsroom.jpg',
      description:
          "The crown jewel of Western Approaches. In this giant tactical room, over 60 workers would actively track the positions of all ships, U-boats and even weather conditions.",
      images: [],
      audio: 'audio/operationsroom.mp4'),
  SectionInfo(9,
      name: 'The Admirals Office',
      iconImage: 'assets/admiralsoffice.jpg',
      description:
          "The nicest room in the bunker. Here is where our admirals were based. With a bird’s eye view of the operations room, there was no better place to be.",
      images: [],
      audio: 'audio/admiralsoffice.mp4'),
  SectionInfo(10,
      name: 'The Johnny Walker Memorial',
      iconImage: 'assets/johnnywalkermemorial.jpg',
      description:
          "Here you can watch a video dedicated to Johnny Walker that details just a few of his victories, and finally his death and funeral.",
      images: [],
      audio: 'audio/walker.mp4'),
  // SectionInfo(11,
  //     name: 'The Wrens Museum',
  //     iconImage: 'assets/wrens.jpg',
  //     description:
  //         "Celebrating the WRNS and the Wrens who served. The Wrens Museum spans decades to show how life as a woman in the Navy has changed over the years.",
  //     images: [],
  //     audio: ''),
];
