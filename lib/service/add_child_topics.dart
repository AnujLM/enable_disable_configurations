import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:enable_disable_configurations/constants.dart';

Future<void> addChildTopics(
    String accessToken, String countriesId, String interestsId) async {
  var headers = {
    "Authorization": accessToken,
    "x-platform-code": "fl",
    "x-version-code": 28,
    "x-sdk-source": "feed",
    "Content-Type": "application/json"
  };
  var data = json.encode({
    "topics": [
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "Australia",
        "number_of_posts": 110,
        "parent_id": countriesId,
        "parent_name": "Countries",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image":
              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/PortArthurPenitentiary.jpg/440px-PortArthurPenitentiary.jpg",
          "description":
              "Australia is the largest country by area in Oceania and the world's sixth-largest country. Australia is the oldest, flattest, and driest inhabited continent, with the least fertile soils. It is a megadiverse country, and its size gives it a wide variety of landscapes and climates, with deserts in the centre, tropical rainforests in the north-east, tropical savannas in the north, and mountain ranges in the south-east.",
          "icon":
              "https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/250px-Flag_of_Australia_%28converted%29.svg.png",
          "pgc": {
            "post_links": [
              {
                "link": "bio.link/onetickettofreedom",
                "text": "Perfect 5 day budget itinerary for Dubai"
              },
              {
                "link": "bio.link/onetickettofreedom",
                "text": "Perfect 10 day budget itinerary for Dubai"
              },
              {
                "link": "bio.link/onetickettofreedom",
                "text": "Perfect 15 day budget itinerary for Dubai"
              }
            ]
          }
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "Austria",
        "number_of_posts": 14,
        "parent_id": countriesId,
        "parent_name": "Countries",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image":
              "https://cdn.cfr.org/sites/default/files/styles/immersive_image_3_2_desktop_2x/public/image/2023/01/DebtCeiling_0.jpg.webp",
          "description":
              "The United States, often referred to as the USA or America, is a vast and diverse country located in North America. As one of the world's most influential nations, the United States plays a significant role in global politics, economics, culture, and technology",
          "icon":
              "https://cdn.britannica.com/79/4479-050-6EF87027/flag-Stars-and-Stripes-May-1-1795.jpg",
          "pgc": {}
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "Finland",
        "number_of_posts": 18,
        "parent_id": countriesId,
        "parent_name": "Countries",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image":
              "https://static.toiimg.com/thumb/98999182/Finland.jpg?width=1200&height=900",
          "description":
              "Finland, officially known as the Republic of Finland, is a Nordic country situated in Northern Europe. Known for its unique blend of modernity and natural beauty, Finland has a distinct cultural identity and a reputation for technological innovation, education, and a high quality of life.",
          "icon":
              "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Flag_of_Finland.svg/800px-Flag_of_Finland.svg.png",
          "pgc": {}
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "India",
        "number_of_posts": 29,
        "parent_id": countriesId,
        "parent_name": "Countries",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image":
              "https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Rashtrapati_Bhavan_Wide_New_Delhi_India.jpg/416px-Rashtrapati_Bhavan_Wide_New_Delhi_India.jpg",
          "description":
              "officially the Republic of India, is a country in South Asia. It is the seventh-largest country by area; the most populous country as of June 2023 and from the time of its independence in 1947, the world's most populous democracy",
          "icon":
              "https://upload.wikimedia.org/wikipedia/en/thumb/4/41/Flag_of_India.svg/250px-Flag_of_India.svg.png",
          "pgc": {}
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "Ireland",
        "number_of_posts": 23,
        "parent_id": countriesId,
        "parent_name": "Countries",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image":
              "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Trim_Castle_6.jpg/440px-Trim_Castle_6.jpg",
          "description":
              "An island in the North Atlantic Ocean, in north-western Europe. It is separated from Great Britain to its east by the North Channel, the Irish Sea, and St George's Channel. Ireland is the second-largest island of the British Isles, the third-largest in Europe, and the twentieth-largest in the world.",
          "icon":
              "https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Flag_of_Ireland.svg/800px-Flag_of_Ireland.svg.png",
          "pgc": {}
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "Kazakistan",
        "number_of_posts": 1,
        "parent_id": countriesId,
        "parent_name": "Countries",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image": "",
          "description":
              "Kazakhstan, officially known as the Republic of Kazakhstan, is the world's largest landlocked country, located in Central Asia and Eastern Europe. With a rich cultural heritage, diverse landscapes, and a strategic geopolitical position, Kazakhstan is a country that bridges both the East and the West.",
          "icon": "",
          "pgc": {}
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "North Pole",
        "number_of_posts": 1,
        "parent_id": countriesId,
        "parent_name": "Countries",
        "priority": 0,
        "total_child_count": 0,
        "widget_id": "65fbe07cf44d6a3a2d8ac2d6"
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "Thailand",
        "number_of_posts": 14,
        "parent_id": countriesId,
        "parent_name": "Countries",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image":
              "data:image/jpeg;base64,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",
          "description":
              "Thailand, officially known as the Kingdom of Thailand, is a country located in Southeast Asia. Known for its rich cultural heritage, stunning landscapes, vibrant cities, and warm hospitality, Thailand is one of the most popular tourist destinations in the world.",
          "icon":
              "https://cdn.britannica.com/38/4038-050-BDDBA6AB/Flag-Thailand.jpg",
          "pgc": {}
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "UAE",
        "number_of_posts": 1,
        "parent_id": countriesId,
        "parent_name": "Countries",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image":
              "https://a.cdn-hotels.com/gdcs/production121/d772/6b5a9a4c-fd06-4bcf-b2f0-d979e3704cf9.jpg",
          "description":
              "The United Arab Emirates (UAE) is a country located on the southeastern corner of the Arabian Peninsula, bordering Saudi Arabia to the south and west, and sharing maritime borders with Qatar to the northwest and Iran to the northeast. Comprising seven emirates, the UAE is known for its rapid economic development, modern infrastructure, and a blend of traditional and cosmopolitan lifestyles.",
          "icon":
              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/Flag_of_the_United_Arab_Emirates.svg/800px-Flag_of_the_United_Arab_Emirates.svg.png",
          "pgc": {}
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "US",
        "number_of_posts": 6,
        "parent_id": countriesId,
        "parent_name": "Countries",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image":
              "https://cdn.cfr.org/sites/default/files/styles/immersive_image_3_2_desktop_2x/public/image/2023/01/DebtCeiling_0.jpg.webp",
          "description":
              "The United States, often referred to as the USA or America, is a vast and diverse country located in North America. As one of the world's most influential nations, the United States plays a significant role in global politics, economics, culture, and technology",
          "icon":
              "https://cdn.britannica.com/79/4479-050-6EF87027/flag-Stars-and-Stripes-May-1-1795.jpg",
          "pgc": {}
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "Adventure",
        "number_of_posts": 13,
        "parent_id": interestsId,
        "parent_name": "Interests",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image":
              "https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2018/04/18/3defc76b-795c-4cfa-a005-c2fabd43f6fb/adventure-travel-cliff",
          "description":
              "Adventure, a word that echoes with the spirit of exploration and the thrill of the unknown. It beckons to the daring, the curious, and those who seek to transcend the boundaries of the ordinary. In the realm of adventure, possibilities unfold like the pages of an unwritten story, waiting to be discovered and embraced.",
          "icon":
              "https://images.pexels.com/photos/1576939/pexels-photo-1576939.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
          "pgc": {}
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "Culture",
        "number_of_posts": 9,
        "parent_id": interestsId,
        "parent_name": "Interests",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image":
              "https://www.thomascook.in/blog/wp-content/uploads/2023/09/rajasthani-culture.jpg",
          "description":
              "Culture is the multifaceted tapestry of shared beliefs, values, customs, behaviors, and artifacts that shape the way a group of people live and interact within a society. It encompasses a wide range of elements, including language, art, music, literature, rituals, traditions, social norms, and more. Culture is both a reflection of a community's collective identity and a dynamic force that evolves over time.",
          "icon":
              "https://www.achievers.com/wp-content/uploads/2020/05/Organizational_Culture_2022_960x540px.jpg",
          "pgc": {}
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "Leisure",
        "number_of_posts": 20,
        "parent_id": interestsId,
        "parent_name": "Interests",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image":
              "https://img.freepik.com/free-vector/people-doing-outdoor-leisure-activities-with-flat-design_23-2147869823.jpg",
          "description":
              "Leisure is a vital component of a well-balanced and fulfilling life, offering individuals an opportunity to relax, recharge, and engage in activities that bring joy and satisfaction. Unlike work or other responsibilities, leisure is a voluntary and unstructured time where individuals can pursue their interests, hobbies, or simply enjoy moments of rest. Leisure activities encompass a wide range of experiences, catering to diverse tastes and preferences. Some may find solace in reading a good book, while others may seek the thrill of outdoor adventures like hiking, biking, or exploring nature. For some, leisure involves cultural pursuits such as attending concerts, visiting museums, or appreciating art, while others may find joy in socializing with friends and family, playing games, or participating in community events. In the fast-paced modern world, leisure becomes increasingly essential as it provides a necessary counterbalance to the demands of daily life. It contributes to mental and emotional well-being, fostering creativity, reducing stress, and promoting overall happiness. Engaging in leisure activities allows individuals to disconnect from routine stressors, promoting a sense of relaxation and contributing to a healthier lifestyle. Leisure is a subjective concept, and what constitutes a leisure activity varies from person to person. It could be as simple as enjoying a quiet moment with a cup of tea, taking a leisurely walk in the park, or pursuing a passion project. The key is to prioritize and allocate time for activities that bring genuine pleasure, allowing individuals to rejuvenate their minds and bodies. Moreover, leisure plays a crucial role in building and maintaining social connections. Shared leisure activities create opportunities for bonding, strengthening relationships, and fostering a sense of community. Whether it's participating in team sports, joining a book club, or attending cultural events together, leisure activities often serve as a foundation for building connections with others. In essence, leisure is a valuable aspect of life that goes beyond mere relaxation. It contributes to personal growth, enhances well-being, and enriches the human experience by providing moments of joy, exploration, and connection. Prioritizing leisure in our lives is not a luxury but a necessary investment in our overall happiness and fulfillment.",
          "icon":
              "https://ameliavirtualcare.com/wp-content/uploads/2022/07/1.Leisure-Time-for-mental-health.jpg",
          "pgc": {}
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "Nature",
        "number_of_posts": 10,
        "parent_id": interestsId,
        "parent_name": "Interests",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image":
              "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Altja_j%C3%B5gi_Lahemaal.jpg/1200px-Altja_j%C3%B5gi_Lahemaal.jpg",
          "description":
              "Nature, with its awe-inspiring beauty and intricate design, captivates the senses and stirs the soul. It is an ever-changing tapestry of life, weaving together ecosystems that support a myriad of flora and fauna. From the majestic mountains to the serene meadows, nature unfolds a symphony of colors, textures, and sounds.",
          "icon":
              "https://natureconservancy-h.assetsadobe.com/is/image/content/dam/tnc/nature/en/photos/w/o/WOPA160517_D056-resized.jpg?crop=864,0,1728,2304&wid=600&hei=800&scl=2.88",
          "pgc": {}
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "Nightlife",
        "number_of_posts": 2,
        "parent_id": interestsId,
        "parent_name": "Interests",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image":
              "https://travel.radicalstorage.com/wp-content/uploads/2022/07/Nightlife.jpeg",
          "description":
              "Nightlife refers to the social and entertainment activities that take place during the evening and into the early hours of the morning. It is a dynamic and diverse aspect of urban culture, offering a wide range of experiences for those seeking entertainment, social interaction, and a vibrant atmosphere after the sun sets. Nightlife can vary significantly from one location to another, reflecting the unique characteristics and preferences of each community.",
          "icon":
              "https://www.tourmyindia.com/blog//wp-content/uploads/2019/08/nightlife-experience.jpg",
          "pgc": {}
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "Shopping",
        "number_of_posts": 18,
        "parent_id": interestsId,
        "parent_name": "Interests",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image":
              "https://www.hatcherlandscape.com/hubfs/images/tanger-staging.png#keepProtocol",
          "description":
              "Shopping is a ubiquitous activity that spans cultures, lifestyles, and economic backgrounds. It is a fundamental aspect of daily life, serving both functional and recreational purposes. Whether done in bustling marketplaces, department stores, or online platforms, shopping is a dynamic and evolving experience that reflects societal trends and individual preferences.",
          "icon":
              "https://img.freepik.com/free-vector/shopping-cart-with-bags-gifts-concept-illustration_114360-18775.jpg",
          "pgc": {}
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "Spiritual",
        "number_of_posts": 2,
        "parent_id": interestsId,
        "parent_name": "Interests",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image":
              "https://media.licdn.com/dms/image/D4D12AQG5DG9pZZqlpA/article-cover_image-shrink_600_2000/0/1684023335803?e=2147483647&v=beta&t=7KShKbYIGO41xfr76U9ZHga2xx8R6lEgjk-71-X4Iek",
          "description":
              "Spirituality is a deeply personal and profound journey that transcends the material realm, seeking meaning, purpose, and connection to something greater than oneself. It encompasses a wide spectrum of beliefs, practices, and experiences, reflecting the diversity of human perspectives on the spiritual dimension of existence. At its core, spirituality often involves an exploration of the inner self, an introspective journey to understand one's essence and place in the universe. It goes beyond religious doctrines, inviting individuals to cultivate a sense of mindfulness, compassion, and interconnectedness with the world around them. Many find spiritual nourishment in organized religions, where rituals, scriptures, and communal worship provide a framework for connecting with the divine. Others embark on a more eclectic and individualized path, drawing inspiration from nature, philosophy, meditation, or a deep introspective exploration of consciousness.Spirituality is often associated with a quest for transcendence—transcending the limitations of the ego, materialism, and the transient nature of earthly existence. It can manifest as a search for inner peace, enlightenment, or a profound sense of unity with the cosmos.",
          "icon":
              "https://media.licdn.com/dms/image/D4E12AQFS4Y-BL8FcGg/article-cover_image-shrink_600_2000/0/1669818122355?e=2147483647&v=beta&t=ijdmsTP_y3VUOo9uc-3b47vDLOK0B8O5-wVafbwp7_E",
          "pgc": {}
        }
      },
      {
        "all_parent_ids": null,
        "is_enabled": true,
        "is_searchable": true,
        "level": 1,
        "name": "Travel Hacks",
        "number_of_posts": 11,
        "parent_id": interestsId,
        "parent_name": "Interests",
        "priority": 0,
        "total_child_count": 0,
        "metadata": {
          "cover_image":
              "https://www.thetatva.in/wp-content/uploads/2023/12/1583275772247.jpeg",
          "description":
              "Traveling can be an exciting adventure, and making the most of your journey often involves smart planning and a few travel hacks.",
          "icon":
              "https://nypost.com/wp-content/uploads/sites/2/2022/12/travel-sales.gif",
          "pgc": {}
        }
      }
    ]
  });
  var dio = Dio();
  var response = await dio.request(
    '$baseUrl/feed/topic',
    options: Options(
      method: 'POST',
      headers: headers,
    ),
    data: data,
  );
  print('-----------------Add Child Topics-----------------');
  
  if (response.statusCode == 200) {
    print(json.encode(response.data));
  } else {
    print(response.statusMessage);
  }
}
