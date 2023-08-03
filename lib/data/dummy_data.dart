import 'package:flutter/material.dart';

import 'package:cric_info/models/category.dart';
import 'package:cric_info/models/meal.dart';

// Constants in Dart should be written in lowerCamelcase.
 const availableCategories = [
  Category(
    id: 'c1',
    title: 'Batsmen',
    color: Colors.purple,
    image: '/Users/Asus/Desktop/flutter_projects/cric_info/lib/assets/images/a.png'
  ),
  Category(
    id: 'c2',
    title: 'Bowler',
    color: Colors.red,
    image: '/Users/Asus/Desktop/flutter_projects/cric_info/lib/assets/images/bowl.png'
  ),
  Category(
    id: 'c3',
    title: 'All-rounder',
    color: Colors.orange,
    image: '/Users/Asus/Desktop/flutter_projects/cric_info/lib/assets/images/all.png'
  ),
  Category(
    id: 'c4',
    title: 'WK-Batsmen',
    color: Colors.amber,
    image: '/Users/Asus/Desktop/flutter_projects/cric_info/lib/assets/images/wk.png'
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
    ],
    title: 'Virat Kohli',
    affordability: Affordability.ind,
    complexity: Complexity.rh,
    imageUrl:
        'https://feeds.abplive.com/onecms/images/uploaded-images/2023/01/15/9095d7a1022baf46f2a77946cba0a4e41673783448564300_original.jpg',
    duration: 'Right Hand Batsmen',
    ingredients: [
      'Born - Nov 05, 1988 (34 years)',
      'Birth Place - Delhi',
      'Height - 5 ft 9 in (175 cm)',
      'Role - Batsman',
      'Batting Style - Right Handed Bat',
      'Bowling Style - Right-arm medium'
    ],
    
    steps: [
      'M  , Inn,  NO, Runs, Hs, Avg, BF, SR, 100, 200, 50,',
      'Test',
      '111, 187, 11,   8676,   254,  49.3, 15708, 55.23, 29,7,29,',
      'ODI',  
      '275, 265, 40,   12898,  183,  57.3, 13776, 93.63, 46,0,65,',
      'T20I',
      '115, 107, 31,    4008,  122,  52.74, 2905, 137.97, 1,0,37,',
],
    isInd: true,
    isAus: false,
    isEng: false,
    isSa: false,
  ),
  Meal(
id: "m2",
        categories: ["c1"],
        title: "Sachin Tendulkar",
        affordability: Affordability.ind,
        complexity: Complexity.rh,
        imageUrl: "https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcTG-e56Uzzz-4cUka3VbYSWn_iweeHtBcOy8fySXnliDzfUmGH4lhhxg1tfX8aY19DWBqq6u7G9YkTV3tc",
        duration: "Right Hand Batsmen",
        ingredients: [
            'Born - Apr 24, 1973 (50 years)',
            'Birth Place - Mumbai',
            'Height - 5 ft 5 in (165 cm)',
            'Role - Batsman',
            'Batting Style - Right Handed Bat',
            'Bowling Style - Right-arm medium'
        ],
        steps: [
            'M, Inn, NO, Runs, Hs, Avg, BF, SR, 100, 200, 50,',
            'Test',
            '200, 329, 33, 15921, 248*, 53.78, 29437, 53.78, 51, 6, 68,',
            'ODI',
            '463, 452, 41, 18426, 200*, 44.83, 21367, 44.83, 49, 0, 96,',
            'Not played T20I'
        ],
      isInd: true,
      isAus: false,
      isEng: false,
      isSa: false
  ),
  Meal(
id: "m4",
    categories: ['c4'],
    title: "AB de Villiers",
    affordability: Affordability.sa,
    complexity: Complexity.rh,
    imageUrl: "https://i.guim.co.uk/img/media/8bbc11933480cab90eda224189d41d661450b797/374_150_4454_2673/master/4454.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=86ffa706a28f90e4b9e15b45b5af7ff3",
    duration: "Right Hand W-K Batsman",
    ingredients: [
        'Born - Feb 17, 1984 (39 years)',
        'Birth Place - Bela-Bela',
        'Height - 5 ft 10 in (178 cm)',
        'Role - Batsman, Wicket-keeper',
        'Batting Style - Right Handed Bat',
        'Bowling Style - Right-arm medium, Legbreak'
    ],
    steps: [
        'M, Inn, NO, Runs, Hs, Avg, BF, SR, 100, 200, 50,',
        'Test',
        '114, 191, 18, 8765, 278*, 50.66, 15416, 56.93, 22, 3, 46,',
        'ODI',
        '228, 218, 39, 9577, 176, 53.5, 8751, 109.33, 25, 0, 53,',
        'T20I',
        '79, 75, 11, 1672, 79*, 26.12, 1173, 142.45, 0, 0, 10,'
    ],
    isInd: false,
    isAus: false,
    isEng: false,
    isSa: true
),

  Meal(
id: "m5",
    categories: ["c2"],
    title: "James Anderson",
    affordability: Affordability.eng,
    complexity: Complexity.rh,
    imageUrl: "https://crictoday.com/wp-content/uploads/2023/07/James-Anderson-1.jpg",
    duration: "Right-arm Fast Bowler",
    ingredients: [
        'Born - Jul 30, 1982 (41 years)',
        'Birth Place - Burnley',
        'Height - 6 ft 2 in (188 cm)',
        'Role - Bowler',
        'Batting Style - Left Handed Bat',
        'Bowling Style - Right-arm fast-medium'
    ],
    steps: [
        'M, Inn, B, Runs, Wkts, BBI, BBM, Econ, Avg, SR, 5W, 10W,',
        'Test',
        '183, 341, 39217, 18233, 690, 7/42, 11/71, 2.79, 26.42, 56.84, 32, 3',
        'ODI',
        '194, 191, 9584, 7861, 269, 5/23, 5/23, 4.92, 29.22, 35.63, 2, 0',
        'T20I',
        '19, 19, 422, 552, 18, 3/23, 3/23, 7.85, 30.67, 23.44, 0, 0'
    ],
    isInd: false,
    isAus: false,
    isEng: true,
    isSa: false
  ),
  Meal(
id: "m6",
    categories: ["c2"],
    title: "Mitchell Starc",
    affordability: Affordability.aus,
    complexity: Complexity.lh,
    imageUrl: "https://img1.hscicdn.com/image/upload/f_auto/lsci/db/PICTURES/CMS/351100/351136.6.jpg",
    duration: "Left-arm Fast Bowler",
    ingredients: [
        'Born - Jan 30, 1990 (33 years)',
        'Birth Place - Baulkham Hills',
        'Height - 6 ft 6 in (198 cm)',
        'Role - Bowler',
        'Batting Style - Left Handed Bat',
        'Bowling Style - Left-arm fast'
    ],
    steps: [
        'M, Inn, B, Runs, Wkts, BBI, BBM, Econ, Avg, SR, 5W, 10W,',
        'Test',
        '82, 156, 16240, 9193, 333, 6/50, 11/94, 3.40, 27.61, 48.77, 14, 2',
        'ODI',
        '110, 110, 5676, 4840, 219, 6/28, 6/28, 5.12, 22.1, 25.92, 9, 0',
        'T20I',
        '58, 58, 1314, 1673, 73, 4/20, 4/20, 7.64, 22.92, 18.0, 0, 0'
    ],
    isInd: false,
    isAus: true,
    isEng: false,
    isSa: false
  ),
  Meal(
id: "m7",
    categories: ["c2"],
    title: "Jasprit Bumrah",
    affordability: Affordability.ind,
    complexity: Complexity.rh,
    imageUrl: "https://staticg.sportskeeda.com/editor/2023/02/35898-16762830205017-1920.jpg",
    duration: "Right-arm Fast Bowler",
    ingredients: [
        'Born - Dec 06, 1993 (29 years)',
        'Birth Place - Ahmedabad',
        'Height - 6 ft 0 in (183 cm)',
        'Role - Bowler',
        'Batting Style - Right Handed Bat',
        'Bowling Style - Right-arm fast'
    ],
    steps: [
        'M , Inn, B,  Runs, Wkts, BBI, BBM, Econ, Avg, SR, 5W, 10W,',
        'Test',
        '30, 58, 6268,2815, 128	 6/27	,9/86	,2.69	,21.99	,48.97	,8	,0',
        'ODI',
        '72	,72	,3807	,2941	,21	,6/19	,6/19	,4.64	,24.31	,31.46	,2	,0',
        'T20I',
        '60	,59	,1283	,1416	,70	,3/11	,3/11	,6.62	,20.23	,18.33	,0	,0'
    ],
    isInd: true,
    isAus: false,
    isEng: false,
    isSa: false
  ),
  Meal(
        id: "m11",
    categories: ["c1"],
    title: "Ricky Ponting",
    affordability: Affordability.aus,
    complexity: Complexity.rh,
    imageUrl: "https://pbs.twimg.com/profile_images/1204204456092397568/sKIKwz3S_400x400.jpg",
    duration: "Right Hand Batsman",
    ingredients: [
        'Born - Dec 19, 1974 (48 years)',
        'Birth Place - Launceston',
        'Height - 5 ft 10 in (178 cm)',
        'Role - Batsman',
        'Batting Style - Right Handed Bat',
        'Bowling Style - Right-arm medium'
    ],
    steps: [
        'M, Inn, NO, Runs, Hs, Avg, BF, SR, 100, 200, 50,',
        'Test',
        '168, 287, 29, 13378, 257, 51.85, 25277, 52.83, 41, 6, 62,',
        'ODI',
        '375, 365, 39, 13704, 164, 42.03, 17046, 80.39, 30, 0, 82,',
        'T20I',
        '17, 16, 2, 401, 98*, 28.64, 311, 128.97, 0, 0, 2,'
    ],
    isInd: false,
    isAus: true,
    isEng: false,
    isSa: false
  ),
  Meal(
    id: "m10",
    categories: ["c1"],
    title: "Jos Buttler",
    affordability: Affordability.eng,
    complexity: Complexity.rh,
    imageUrl: "https://www.sportzcraazy.com/wp-content/uploads/2019/09/Jos-Buttler.jpg",
    duration: "Right Hand Batsman",
    ingredients: [
        'Born - Sep 8, 1990 (32 years)',
        'Birth Place - Taunton',
        'Height - 5 ft 10 in (178 cm)',
        'Role - Batsman, Wicket-keeper',
        'Batting Style - Right Handed Bat',
        'Bowling Style - Right-arm medium'
    ],
    steps: [
        'M, Inn, NO, Runs, Hs, Avg, BF, SR, 100, 50, 4s, 6s,',
        'Test',
        '50, 88, 5, 2392, 152*, 28.05, 3401, 70.32, 3, 13, 305, 21,',
        'ODI',
        '161, 146, 18, 3875, 150, 30.59, 3751, 103.32, 9, 21, 299, 86,',
        'T20I',
        '85, 75, 26, 1729, 73*, 34.58, 1205, 143.57, 0, 10, 137, 46,'
    ],
    isInd: false,
    isAus: false,
    isEng: true,
    isSa: false
  ),
  Meal(
id: "m8",
    categories: ["c2"],
    title: "Dale Steyn",
    affordability: Affordability.sa,
    complexity: Complexity.rh,
    imageUrl: "https://resources.pulse.icc-cricket.com/ICC/photo/2019/05/22/52016133-b832-43d4-a155-327e6822e5a7/Dale-Steyn.jpg",
    duration: "Right-arm Fast Bowler",
    ingredients: [
        'Born - Jun 27, 1983 (40 years)',
        'Birth Place - Phalaborwa',
        'Height - 5 ft 10 in (178 cm)',
        'Role - Bowler',
        'Batting Style - Right Handed Bat',
        'Bowling Style - Right-arm fast'
    ],
    steps: [
        'M, Inn, B, Runs, Wkts, BBI, BBM, Econ, Avg, SR, 5W, 10W,',
        'Test',
        '93, 171, 18701, 10077, 7/51, 11/60, 3.23, 22.32, 44.9, 26, 5,',
        'ODI',
        '125, 123, 6392, 6417, 6/39, 6/39, 6.01, 25.37, 33.8, 3, 0,',
        'T20I',
        '47, 47, 1044, 1193, 4/9, 4/9, 6.85, 24.7, 52.4, 0, 0,'
    ],
    isInd: false,
    isAus: false,
    isEng: false,
    isSa: true
  ),
  Meal(
    id: "m12",
    categories: ["c3"],
    title: "Ravindra Jadeja",
    affordability: Affordability.ind,
    complexity: Complexity.lh,
    imageUrl: "https://m.economictimes.com/thumb/msid-90020101,width-1200,height-900,resizemode-4,imgsize-88278/ravindra-jadeja.jpg",
    duration: "Left-hand All-rounder",
    ingredients: [
        'Born - Dec 6, 1988 (34 years)',
        'Birth Place - NavagamGhed',
        'Height - 6 ft 1 in (185 cm)',
        'Role - All-rounder',
        'Batting Style - Left Handed Bat',
        'Bowling Style - Left-arm Orthodox'
    ],
    steps: [
        'M, Inn, Runs, HS, Avg, BF, SR, 100, 50, 4s, 6s,',
        'Test',
        '59, 92, 2227, 100*, 35.11, 3731, 59.75, 1, 14, 266, 31,',
        'ODI',
        '169, 134, 2412, 87, 30.15, 3004, 80.29, 0, 14, 186, 42,',
        'T20I',
        '51, 38, 224, 33*, 15.14, 198, 113.13, 0, 0, 15, 3,'
    ],
    isInd: true,
    isAus: false,
    isEng: false,
    isSa: false
  ),
  Meal(    id: "m13",
    categories: ["c3"],
    title: "Ben Stokes",
    affordability: Affordability.eng,
    complexity: Complexity.rh,
    imageUrl: "https://e0.365dm.com/22/06/2048x1152/skysports-pa-ben-stokes-england_5805019.jpg",
    duration: "Right-hand All-rounder",
    ingredients: [
        'Born - Jun 4, 1991 (32 years)',
        'Birth Place - Christchurch',
        'Height - 6 ft 0 in (183 cm)',
        'Role - All-rounder',
        'Batting Style - Left Handed Bat',
        'Bowling Style - Right-arm Fast-Medium'
    ],
    steps: [
        'M, Inn, Runs, HS, Avg, BF, SR, 100, 50, 4s, 6s,',
        'Test',
        '71, 129, 4051, 258, 36.54, 6659, 60.88, 8, 26, 476, 64,',
        'ODI',
        '98, 89, 2953, 102, 40.84, 3287, 89.91, 3, 20, 225, 74,',
        'T20I',
        '39, 27, 387, 47, 20.37, 276, 140.22, 0, 0, 22, 20,'
    ],
    isInd: false,
    isAus: false,
    isEng: true,
    isSa: false),
Meal(
   id: "m16",
    categories: ["c4"],
    title: "MS Dhoni",
    affordability: Affordability.ind,
    complexity: Complexity.rh,
    imageUrl: "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1emwnX.img?w=768&h=432&m=6",
    duration: "Right Hand W-K Batsman",
    ingredients: [
        'Born - Jul 7, 1981 (42 years)',
        'Birth Place - Ranchi',
        'Height - 5 ft 9 in (175 cm)',
        'Role -Wicket-keeper, Batsman',
        'Batting Style - Right Handed Bat',
        'Bowling Style - Right-arm Medium'
    ],
    steps: [
        'M, Inn, NO, Runs, Hs, Avg, BF, SR, 100, 50, 4s, 6s,',
        'Test',
        '90, 144, 16, 4876, 224, 38.09, 8248, 59.12, 6, 33, 544, 78,',
        'ODI',
        '350, 297, 84, 10773, 183*, 50.58, 12303, 87.56, 10, 73, 826, 229,',
        'T20I',
        '98, 85, 42, 1617, 56*, 37.6, 1282, 126.13, 0, 2, 116, 52,'
    ],
    isInd: true,
    isAus: false,
    isEng: false,
    isSa: false

)
];
