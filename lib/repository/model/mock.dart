import 'package:event_project/repository/model/event.dart';
import 'package:event_project/repository/model/speaker.dart';

final List<String> categories = [
  'All',
  'Art',
  'Tech',
  'Design',
  'Movies',
  'Trade',
  'Business',
  'Cricket'
];

final List<Event> events = [
  Event(
      categories: [
        'All',
        'Business',
      ],
      image: "https://picsum.photos/200/300",
      startDate: '15 Feb 2023',
      endDate: '25 Feb 2023',
      name: 'Scifi Festival 2023',
      location: 'Mumbai',
      cost: '1440',
      discountCost: '240',
      speakers: speakers,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.'),
  Event(
      categories: [
        'Art',
        'Tech',
      ],
      image: "https://picsum.photos/200/300",
      startDate: '1 Jan 2023',
      endDate: '22 Jan 2023',
      name: 'Big Data Fest by SoftServe 2023',
      location: null,
      cost: '',
      discountCost: null,
      speakers: speakers.sublist(0, 3),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.'),
  Event(
      categories: [
        'Movies',
        'Trade',
      ],
      image: "https://picsum.photos/200/30",
      startDate: '15 May 2023',
      endDate: null,
      name: 'Electric Bike 2023',
      location: 'Jaipur',
      cost: '1440',
      discountCost: '240',
      speakers: speakers.sublist(0, 3),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.'),
  Event(
      categories: [''],
      image: "https://picsum.photos/200/300",
      startDate: '15 May 2023',
      endDate: '22 May 2023',
      name: 'Tesla Roars 2023',
      location: 'Delhi',
      cost: '1440',
      discountCost: '240',
      speakers: speakers.sublist(0, 3),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.'),
  Event(
      categories: [
        'Movies',
      ],
      image: "https://picsum.photos/200/300",
      startDate: '15 May 2023',
      endDate: '22 May 2023',
      name: 'Nimap Holiday Fest 2023',
      location: 'Lower Parel',
      cost: '1440',
      discountCost: '240',
      speakers: speakers,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.'),
  Event(
      categories: [
        'Movies',
        'Trade',
      ],
      image: "https://picsum.photos/200/300",
      startDate: '15 May 2023',
      endDate: '22 May 2023',
      name: 'Food Festival 2023',
      location: 'Nagpur',
      cost: '1440',
      discountCost: '240',
      speakers: speakers.sublist(0, 3),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.'),
  Event(
      categories: [
        'Movies',
        'Trade',
      ],
      image: "https://picsum.photos/200/300",
      startDate: '1 Jan 2023',
      endDate: '22 Jan 2023',
      name: 'Big Data Fest by SoftServe 2023',
      location: null,
      cost: '',
      discountCost: null,
      speakers: speakers.sublist(0, 5),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.'),
  Event(
      categories: [
        'Movies',
        'Trade',
      ],
      image: "https://picsum.photos/200/300",
      startDate: '15 Feb 2023',
      endDate: '25 Feb 2023',
      name: 'Scifi Festival 2023',
      location: 'Mumbai',
      cost: '1440',
      discountCost: '240',
      speakers: speakers.sublist(0, 3),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.'),
  Event(
      categories: [
        'All',
        'Tech',
        'Movies',
        'Trade',
        'Business',
      ],
      image: "https://picsum.photos/200/300",
      startDate: '15 May 2023',
      endDate: null,
      name: 'Electric Bike 2023',
      location: 'Jaipur',
      cost: '1440',
      discountCost: '240',
      speakers: speakers.sublist(0, 4),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.'),
  Event(
      categories: [
        'Movies',
        'Trade',
      ],
      image: "https://picsum.photos/200/300",
      startDate: '15 May 2023',
      endDate: '22 May 2023',
      name: 'Tesla Roars 2023',
      location: 'Delhi',
      cost: '1440',
      discountCost: '240',
      speakers: speakers.sublist(1, 4),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.'),
  Event(
      categories: [
        'All',
        'Trade',
        'Business',
            ],
      image: "https://picsum.photos/200/300",
      startDate: '15 May 2023',
      endDate: '22 May 2023',
      name: 'Nimap Holiday Fest 2023',
      location: 'Mumbai',
      cost: '1440',
      discountCost: '240',
      speakers: speakers.sublist(3, 6),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.'),
  Event(
      categories: [
        'All',
        'Art',
        'Tech',
        'Design'

      ],
      image: "https://picsum.photos/200/300",
      startDate: '15 May 2023',
      endDate: '22 May 2023',
      name: 'Food Festival 2023',
      location: 'Kolhapur',
      cost: '1440',
      discountCost: '240',
      speakers: speakers.sublist(0, 2),
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed doculpa qui officia deserunt mollit anim id est laborum.'),
];
final speakers = [
  Speaker(
      name: 'Praveen Sharma',
      profession: 'Backend Developer',
      profileImage: 'assets/images/personOne.png',
      bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do'
          'culpa qui officia deserunt mollit anim id est laborum.'),
  Speaker(
      name: 'Praveen Sharma',
      profession: 'Backend Developer',
      profileImage: 'assets/images/personOne.png',
      bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do'
          'culpa qui officia deserunt mollit anim id est laborum.'),
  Speaker(
      name: 'Praveen Sharma',
      profession: 'Backend Developer',
      profileImage: 'assets/images/personOne.png',
      bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do'
          'culpa qui officia deserunt mollit anim id est laborum.'),
  Speaker(
      name: 'Praveen Sharma',
      profession: 'Backend Developer',
      profileImage: 'assets/images/personOne.png',
      bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do'
          'culpa qui officia deserunt mollit anim id est laborum.'),
  Speaker(
      name: 'Praveen Sharma',
      profession: 'Backend Developer',
      profileImage: 'assets/images/personOne.png',
      bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do'
          'culpa qui officia deserunt mollit anim id est laborum.'),
  Speaker(
      name: 'Praveen Sharma',
      profession: 'Backend Developer',
      profileImage: 'assets/images/personOne.png',
      bio: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do'
          'culpa qui officia deserunt mollit anim id est laborum.')
];
