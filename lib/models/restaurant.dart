import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:restaurant/models/cart_item.dart';
import 'package:restaurant/models/favorite_item.dart';
import 'package:restaurant/models/food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // alcohol
    Food(
      name: "ABC Extra Stout",
      description:
          "ABC beer is a premium brand best known for its flagship product, ABC Extra Stout. Originating in Singapore in 1931 with German and Dutch heritage (Archipelago Brewery Company), the brand is now managed by the Heineken portfolio. The Extra Stout is a full-bodied, rich, dark Foreign/Export Stout, recognized for its distinct malty and aromatic flavor that finishes with a characteristic bittersweet aftertaste, typically boasting an Alcohol by Volume (ABV) of around 8%.",
      price: 3.50,
      rating: 4.2,
      imagePath: "assets/images/alcohol/abc.jpg",
      category: FoodCategory.alcohols,
      availableAddons: [
        Addon(name: "Chaser (Cola)", price: 1.50),
        Addon(name: "Extra Cold", price: 0.50),
        Addon(name: "Bottle Service", price: 2.00),
        Addon(name: "Snack Mix", price: 1.25),
      ],
    ),
    Food(
      name: "Anchor Beer",
      description:
          "Anchor Beer, born in Singapore in 1933, is a popular and award-winning lager brand across Southeast Asia, often associated with moments of celebration and friendship. It is brewed using a traditional European recipe that has been refined over time, emphasizing a crisp, smooth, and refreshing taste without an overly bitter aftertaste.",
      price: 2.75,
      rating: 4.0,
      imagePath: "assets/images/alcohol/anchor.jpg",
      category: FoodCategory.alcohols,
      availableAddons: [
        Addon(name: "Lime Wedge", price: 0.25),
        Addon(name: "Chilled Glass", price: 0.75),
        Addon(name: "Bar Snacks", price: 2.50),
        Addon(name: "Extra Cold", price: 0.50),
      ],
    ),
    Food(
      name: "Angkor Beer",
      description:
          "Angkor Beer is Cambodia's most iconic and widely consumed beer, often affectionately referred to as the country's national beer. Named after the magnificent Angkor temples, this product is a pale lager with an Alcohol by Volume (ABV) of around 5%. It is renowned for its smooth, crisp, and clean taste, which has made it a favorite among both locals and tourists since its relaunch in 1992.",
      price: 2.25,
      rating: 4.3,
      imagePath: "assets/images/alcohol/angkor.jpg",
      category: FoodCategory.alcohols,
      availableAddons: [
        Addon(name: "Lime Slice", price: 0.25),
        Addon(name: "Ice Bucket", price: 3.00),
        Addon(name: "Cambodian Snacks", price: 2.00),
        Addon(name: "Extra Cold", price: 0.50),
      ],
    ),
    Food(
      name: "Carlsberg",
      description:
          "Carlsberg is the flagship beer brand of the Danish multinational brewer, the Carlsberg Group, which was founded in Copenhagen in 1847 by J. C. Jacobsen. The core product, often known as Carlsberg Danish Pilsner, is a European Pale Lager typically brewed with a 5% ABV (though this can vary by market) and is globally distributed to over 140 countries.",
      price: 3.25,
      rating: 4.1,
      imagePath: "assets/images/alcohol/carlsberg.jpg",
      category: FoodCategory.alcohols,
      availableAddons: [
        Addon(name: "Frosted Glass", price: 1.00),
        Addon(name: "Beer Tower", price: 15.00),
        Addon(name: "European Snacks", price: 3.00),
        Addon(name: "Lemon Slice", price: 0.30),
      ],
    ),
    Food(
      name: "Cambodia Beer",
      description:
          "Cambodia Beer is a premium lager that represents modern Cambodian brewing excellence. Produced with high-quality ingredients and advanced brewing techniques, this beer offers a crisp, refreshing taste that appeals to both local and international palates. It has gained popularity as a go-to choice for social gatherings and celebrations throughout the country.",
      price: 2.50,
      rating: 4.0,
      imagePath: "assets/images/alcohol/cambodia.jpg",
      category: FoodCategory.alcohols,
      availableAddons: [
        Addon(name: "Lime Garnish", price: 0.25),
        Addon(name: "Chilled Pitcher", price: 8.00),
        Addon(name: "Local Snacks", price: 1.75),
        Addon(name: "Extra Cold", price: 0.50),
      ],
    ),
    Food(
      name: "Hanuman Premium Lager",
      description:
          "Hanuman is a notable, relatively new player in Cambodia's highly competitive beer market, having launched its flagship Hanuman Premium Lager in 2021. Brewed by Hanuman Beverages Co. Ltd. at a state-of-the-art facility on the outskirts of Phnom Penh, the brand has positioned itself in the premium segment by focusing on high-quality ingredients and modern German brewing expertise.",
      price: 4.00,
      rating: 4.5,
      imagePath: "assets/images/alcohol/hanuman.jpg",
      category: FoodCategory.alcohols,
      availableAddons: [
        Addon(name: "Premium Glass", price: 1.50),
        Addon(name: "Craft Snack Pairing", price: 4.50),
        Addon(name: "Lime Wedge", price: 0.25),
        Addon(name: "Ice Cooler", price: 4.00),
      ],
    ),
    Food(
      name: "Heineken",
      description:
          "Heineken, the flagship brand of the multinational brewing giant The Heineken Company, is one of the world's most recognized and valuable international premium lagers. Originating in Amsterdam in 1864, the beer is famous for its distinct, consistent taste, which is achieved through the use of its proprietary A-Yeast.",
      price: 3.75,
      rating: 4.4,
      imagePath: "assets/images/alcohol/heineken.jpg",
      category: FoodCategory.alcohols,
      availableAddons: [
        Addon(name: "Chilled Glass", price: 1.00),
        Addon(name: "International Snacks", price: 3.50),
        Addon(name: "Lemon Slice", price: 0.30),
        Addon(name: "Bottle Service", price: 2.50),
      ],
    ),
    Food(
      name: "Jinro Soju",
      description:
          "Jinro, a name most famously associated with soju—the world's top-selling distilled spirit—is part of the South Korean beverage giant HiteJinro. While Jinro itself is the undisputed global leader in soju production and sales, offering a clean, smooth Korean spirit that's perfect for shots or mixed drinks with an ABV typically around 17-20%.",
      price: 5.50,
      rating: 4.6,
      imagePath: "assets/images/alcohol/jinro.jpg",
      category: FoodCategory.alcohols,
      availableAddons: [
        Addon(name: "Soju Cocktail Mix", price: 2.00),
        Addon(name: "Korean Snacks", price: 3.25),
        Addon(name: "Shot Glasses", price: 1.00),
        Addon(name: "Fruit Platter", price: 6.00),
      ],
    ),
    Food(
      name: "Krud Pilsner",
      description:
          "Krud Beer is a popular pilsner-style lager that is proudly Cambodian, produced by the Vattanac Brewery Co., Ltd. Launched in late 2021, Krud is a key brand for the Vattanac Group, a major conglomerate that re-entered the beverage market with a significant investment in a modern, state-of-the-art brewery in Phnom Penh.",
      price: 3.00,
      rating: 4.2,
      imagePath: "assets/images/alcohol/krud.jpg",
      category: FoodCategory.alcohols,
      availableAddons: [
        Addon(name: "Lime Garnish", price: 0.25),
        Addon(name: "Bar Nuts", price: 2.00),
        Addon(name: "Chilled Glass", price: 0.75),
        Addon(name: "Extra Cold", price: 0.50),
      ],
    ),
    Food(
      name: "Tiger Beer",
      description:
          "Tiger Beer is a world-renowned, award-winning pale lager that was first brewed in Singapore in 1932 by Malayan Breweries Limited, a joint venture between Fraser and Neave and Heineken. Known as Asia's International Premium Beer, Tiger is a full-bodied, yet intensely refreshing lager specifically developed for a tropical climate using a strict 500-hour brewing process and high-quality ingredients.",
      price: 3.50,
      rating: 4.3,
      imagePath: "assets/images/alcohol/tiger.jpg",
      category: FoodCategory.alcohols,
      availableAddons: [
        Addon(name: "Lime Wedge", price: 0.25),
        Addon(name: "Asian Snacks", price: 2.75),
        Addon(name: "Frosted Mug", price: 1.25),
        Addon(name: "Beer Tower", price: 18.00),
      ],
    ),

    // burger
    Food(
      name: "Gourmet Cheeseburger",
      description:
          "This close-up shot captures the ultimate stacked gourmet double cheeseburger. Resting on a wooden cutting board, the towering creation begins with a toasted, sesame-studded brioche bun. Between the halves are two thick, savory meat patties generously coated in a melted combination of bright cheddar and white cheese, creating a delicious cascade over the edges.",
      price: 12.99,
      rating: 4.6,
      imagePath: "assets/images/burger/burger1.jpg",
      category: FoodCategory.bugers,
      availableAddons: [
        Addon(name: "Extra Patty", price: 4.50),
        Addon(name: "Bacon Strips", price: 2.75),
        Addon(name: "Avocado", price: 1.95),
        Addon(name: "Fried Egg", price: 1.50),
      ],
    ),
    Food(
      name: "Grilled Cheeseburger Wrap",
      description:
          "This enticing image features two cross-sections of a perfectly executed Grilled Cheeseburger Wrap, stacked appealingly on a rustic wooden cutting board. The exterior is a soft tortilla, beautifully marked with dark, crisp grill lines, indicating it has been heated and pressed to a delicious finish.",
      price: 9.75,
      rating: 4.3,
      imagePath: "assets/images/burger/burger2.jpg",
      category: FoodCategory.bugers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 1.25),
        Addon(name: "Guacamole", price: 1.95),
        Addon(name: "Sour Cream", price: 0.75),
        Addon(name: "Jalapeños", price: 0.95),
      ],
    ),
    Food(
      name: "Crispy Fried Chicken Sandwich",
      description:
          "This mouthwatering image showcases a perfectly assembled Crispy Fried Chicken Sandwich. The foundation is a soft, lightly toasted brioche bun that cradles a generous layer of crisp, green lettuce and a thick slice of red tomato.",
      price: 10.50,
      rating: 4.7,
      imagePath: "assets/images/burger/burger3.jpg",
      category: FoodCategory.bugers,
      availableAddons: [
        Addon(name: "Spicy Mayo", price: 0.75),
        Addon(name: "Extra Crispy", price: 1.25),
        Addon(name: "Pickles", price: 0.50),
        Addon(name: "Coleslaw", price: 1.25),
      ],
    ),
    Food(
      name: "Chicken Strip Basket",
      description:
          "This inviting platter showcases a generous portion of classic comfort food, dominated by an array of intensely crispy, golden-brown chicken tenders. These tenders boast a heavily textured, craggy breading that suggests maximum crunch. Accompanying the chicken is a heaping serving of thick-cut, golden French fries.",
      price: 11.25,
      rating: 4.4,
      imagePath: "assets/images/burger/burger4.jpg",
      category: FoodCategory.bugers,
      availableAddons: [
        Addon(name: "Extra Dipping Sauce", price: 0.75),
        Addon(name: "Onion Rings", price: 3.50),
        Addon(name: "Gravy", price: 1.25),
        Addon(name: "Cheese Curds", price: 2.75),
      ],
    ),
    Food(
      name: "Bucket of Fried Chicken",
      description:
          "The pieces, which appear to be a mix of drumsticks and wings, are coated in a thick, textured, golden-brown breading that promises a satisfying crunch. The uniform, craggy exterior suggests the chicken was perfectly deep-fried to achieve maximum crispness. The sheer quantity of the chicken fills the container, emphasizing the appeal of this classic, savory, and comforting meal.",
      price: 18.99,
      rating: 4.5,
      imagePath: "assets/images/burger/burger5.jpg",
      category: FoodCategory.bugers,
      availableAddons: [
        Addon(name: "Biscuits (4pc)", price: 2.50),
        Addon(name: "Mashed Potatoes", price: 3.25),
        Addon(name: "Coleslaw", price: 2.25),
        Addon(name: "Extra Gravy", price: 1.50),
      ],
    ),
    Food(
      name: "Creamy White Pizza with Ham",
      description:
          "This vibrant pizza presents a colorful and unusual combination of toppings, baked on a thick, golden crust. Instead of a traditional red sauce, the base is covered with a thick layer of melted white cheese, likely mozzarella or a creamy cheese blend. It is generously topped with diced ham and a lively medley of mixed vegetables, including bright yellow corn, green peas, and red and green bell peppers.",
      price: 14.50,
      rating: 4.2,
      imagePath: "assets/images/burger/burger6.jpg",
      category: FoodCategory.bugers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 2.00),
        Addon(name: "Bacon Bits", price: 1.75),
        Addon(name: "Mushrooms", price: 1.50),
        Addon(name: "Garlic Bread", price: 3.25),
      ],
    ),
    Food(
      name: "Pulled Chicken Melt",
      description:
          "The sandwich is made with buttered, toasted white bread, featuring crisp grill marks on the surface. Inside, it's packed with melted, gooey cheddar cheese that oozes down the sides, tender pieces of shredded or sliced chicken coated in a tangy, spicy sauce, and a generous layer of chunky.",
      price: 8.99,
      rating: 4.3,
      imagePath: "assets/images/burger/burger7.jpg",
      category: FoodCategory.bugers,
      availableAddons: [
        Addon(name: "Extra BBQ Sauce", price: 0.50),
        Addon(name: "Onion Strings", price: 1.75),
        Addon(name: "Pickles", price: 0.50),
        Addon(name: "Side Salad", price: 3.50),
      ],
    ),
    Food(
      name: "Bacon Chicken Sub",
      description:
          "The bread is generously stuffed with layers of crisp green lettuce and what appears to be pickles or shredded cabbage underneath a substantial mound of warm, savory fillings. The main components are chunks of seasoned, grilled or roasted chicken breast combined with thick, irregularly cut strips of perfectly rendered, crispy bacon.",
      price: 11.75,
      rating: 4.6,
      imagePath: "assets/images/burger/burger8.jpg",
      category: FoodCategory.bugers,
      availableAddons: [
        Addon(name: "Extra Bacon", price: 2.25),
        Addon(name: "Ranch Dressing", price: 0.75),
        Addon(name: "Jalapeños", price: 0.95),
        Addon(name: "Cheese Sauce", price: 1.25),
      ],
    ),
    Food(
      name: "Golden French Fries",
      description:
          "Features a truly monumental heap of golden French fries, piled high in a dramatic, mountain-like centerpiece. The fries are perfectly cooked, exhibiting a crisp exterior, and are generously dusted with dark seasonings, likely pepper, paprika, and dried herbs. At the very peak of the mound, a small bowl of classic ketchup, garnished with a sprig of dill, sits precariously.",
      price: 4.99,
      rating: 4.1,
      imagePath: "assets/images/burger/burger9.jpg",
      category: FoodCategory.bugers,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 1.50),
        Addon(name: "Gravy", price: 1.25),
        Addon(name: "Truffle Oil", price: 2.00),
        Addon(name: "Bacon Bits", price: 1.75),
      ],
    ),
    Food(
      name: "Gourmet Hot Dog",
      description:
          "The substantial frankfurter has been scored in a spiral cut before cooking, giving it a caramelized texture and allowing it to hold the toppings more effectively. It is nestled in a toasted, elongated bun that appears to be lightly brushed with butter and seasoning. The hot dog is generously topped with grated yellow cheese and a thick, zig-zagging line of ketchup, garnished with chopped green herbs.",
      price: 7.50,
      rating: 4.0,
      imagePath: "assets/images/burger/burger10.jpg",
      category: FoodCategory.bugers,
      availableAddons: [
        Addon(name: "Chili", price: 2.25),
        Addon(name: "Onions", price: 0.75),
        Addon(name: "Relish", price: 0.50),
        Addon(name: "Mustard Variety", price: 0.25),
      ],
    ),

    // cakes
    Food(
      name: "Chocolate Drip Cake",
      description:
          "This exquisite dessert is a beautifully crafted chocolate drip cake, standing tall on a black serving platter. The cake is coated in a smooth, light brown or caramel-colored frosting, over which a rich, dark chocolate ganache has been poured, creating elegant drips down the sides. Perfect for celebrations and special occasions.",
      price: 32.99,
      rating: 4.8,
      imagePath: "assets/images/cake/cake1.jpg",
      category: FoodCategory.cakes,
      availableAddons: [
        Addon(name: "Custom Message", price: 3.50),
        Addon(name: "Fresh Berries", price: 4.25),
        Addon(name: "Gold Leaf Decor", price: 6.00),
        Addon(name: "Vanilla Ice Cream", price: 3.75),
      ],
    ),
    Food(
      name: "Valentine's Day Pink Cake",
      description:
          "This charming cake is a festive, two-tiered creation perfect for a romantic celebration like Valentine's Day. The smooth white base is topped with a vibrant pink marbled glaze that features thick, glossy red drips cascading down the sides. The design is heavily themed with love, featuring tiny red heart sprinkles scattered across the lower tier.",
      price: 45.50,
      rating: 4.9,
      imagePath: "assets/images/cake/cake2.jpg",
      category: FoodCategory.cakes,
      availableAddons: [
        Addon(name: "Heart-shaped Topper", price: 2.50),
        Addon(name: "Extra Roses", price: 5.00),
        Addon(name: "Champagne Glaze", price: 4.50),
        Addon(name: "Romantic Packaging", price: 3.25),
      ],
    ),
    Food(
      name: "Vibrant Birthday Cake",
      description:
          "This cheerful cake is a vibrant, modern creation clearly designed for a celebration. It features a smooth white frosting base accented by a dramatic, glossy blue drip glaze cascading down the sides. The cake is further decorated with small, scattered multi-colored sprinkles and a border of larger, solid blue or teal spheres around the base.",
      price: 38.75,
      rating: 4.7,
      imagePath: "assets/images/cake/cake3.jpg",
      category: FoodCategory.cakes,
      availableAddons: [
        Addon(name: "Number Candles", price: 2.25),
        Addon(name: "Sparkler", price: 1.50),
        Addon(name: "Extra Sprinkles", price: 1.75),
        Addon(name: "Birthday Message", price: 2.00),
      ],
    ),
    Food(
      name: "Chocolate Cherry Cake",
      description:
          "The slice reveals alternating layers of vanilla sponge and chocolate cake, generously separated by thick layers of creamy white frosting interspersed with dark red fruit, likely cherries. The entire cake is topped with a glossy, thick dark chocolate ganache that drips appealingly down the sides. A perfect blend of rich chocolate and tart cherries.",
      price: 35.99,
      rating: 4.6,
      imagePath: "assets/images/cake/cake4.jpg",
      category: FoodCategory.cakes,
      availableAddons: [
        Addon(name: "Extra Cherries", price: 3.50),
        Addon(name: "Whipped Cream", price: 2.25),
        Addon(name: "Chocolate Shavings", price: 2.75),
        Addon(name: "Cherry Compote", price: 4.00),
      ],
    ),
    Food(
      name: "Classic Cheesecake",
      description:
          "The slice is characterized by its thick, buttery graham cracker crust and its dense, creamy, pale-yellow filling, which suggests a rich, New York style texture. The top of the cake is glistening with a bright red strawberry glaze that drips appealingly down the side. It is crowned with a cluster of fresh, whole strawberries.",
      price: 28.50,
      rating: 4.8,
      imagePath: "assets/images/cake/cake5.jpg",
      category: FoodCategory.cakes,
      availableAddons: [
        Addon(name: "Mixed Berry Topping", price: 3.75),
        Addon(name: "Caramel Drizzle", price: 2.50),
        Addon(name: "Lemon Zest", price: 1.25),
        Addon(name: "Extra Graham Crust", price: 2.00),
      ],
    ),
    Food(
      name: "Raspberry Cheesecake",
      description:
          "A beautiful wedge of creamy cheesecake resting on a rustic white plate. The slice features a thick, well-defined graham cracker crust and a smooth, dense filling. It is generously topped with a rich, glossy raspberry coulis that drips down the sides, pooling attractively on the plate. The perfect balance of tart and sweet.",
      price: 29.75,
      rating: 4.7,
      imagePath: "assets/images/cake/cake6.jpg",
      category: FoodCategory.cakes,
      availableAddons: [
        Addon(name: "Fresh Raspberries", price: 4.25),
        Addon(name: "White Chocolate Shavings", price: 2.50),
        Addon(name: "Mint Garnish", price: 1.00),
        Addon(name: "Raspberry Sauce", price: 2.75),
      ],
    ),
    Food(
      name: "Chocolate Raspberry Cake",
      description:
          "This visually stunning cake presents a delightful contrast between its pink and brown layers. The lower half of the cake is covered in a deep chocolate frosting, while the upper half is a smooth, bright pink layer—suggesting a raspberry or strawberry flavor profile. The two halves are divided by a thick, dark chocolate ganache drip.",
      price: 36.25,
      rating: 4.8,
      imagePath: "assets/images/cake/cake7.jpg",
      category: FoodCategory.cakes,
      availableAddons: [
        Addon(name: "Edible Flowers", price: 5.50),
        Addon(name: "Raspberry Filling", price: 3.25),
        Addon(name: "Dark Chocolate Curls", price: 3.00),
        Addon(name: "Vanilla Bean Ice Cream", price: 4.25),
      ],
    ),
    Food(
      name: "Carrot Cake",
      description:
          "A moist and flavorful carrot cake packed with freshly grated carrots, crushed pineapple, and walnuts. Spiced with cinnamon, nutmeg, and ginger, this classic cake is layered with rich cream cheese frosting and topped with toasted pecans. Perfect for any season and loved by all ages.",
      price: 26.99,
      rating: 4.5,
      imagePath: "assets/images/cake/cake8.jpg",
      category: FoodCategory.cakes,
      availableAddons: [
        Addon(name: "Extra Cream Cheese Frosting", price: 3.00),
        Addon(name: "Toasted Coconut", price: 2.25),
        Addon(name: "Raisins", price: 1.50),
        Addon(name: "Candied Carrots", price: 2.75),
      ],
    ),
    Food(
      name: "Pineapple Upside-Down Cake",
      description:
          "A classic retro dessert that never goes out of style. This moist vanilla cake is baked with a caramelized pineapple and maraschino cherry topping that becomes the beautiful bottom when inverted. The result is a stunning presentation with glistening pineapple rings and sweet, buttery caramel sauce.",
      price: 24.50,
      rating: 4.4,
      imagePath: "assets/images/cake/cake9.jpg",
      category: FoodCategory.cakes,
      availableAddons: [
        Addon(name: "Extra Cherry Topping", price: 2.00),
        Addon(name: "Caramel Sauce", price: 2.50),
        Addon(name: "Toasted Almonds", price: 2.25),
        Addon(name: "Whipped Coconut Cream", price: 3.25),
      ],
    ),
    Food(
      name: "Passion Fruit Cake",
      description:
          "An exotic and tropical delight featuring layers of light vanilla sponge cake soaked with passion fruit syrup. Filled with passion fruit curd and covered in smooth passion fruit buttercream. Topped with fresh passion fruit pulp and edible flowers for a truly tropical experience that's both tart and sweet.",
      price: 34.25,
      rating: 4.7,
      imagePath: "assets/images/cake/cake10.jpg",
      category: FoodCategory.cakes,
      availableAddons: [
        Addon(name: "Mango Coulis", price: 3.75),
        Addon(name: "Toasted Macadamia Nuts", price: 3.50),
        Addon(name: "Coconut Flakes", price: 2.00),
        Addon(name: "Lime Zest", price: 1.25),
      ],
    ),

    // khmer cake
    Food(
      name: "Steamed Palm Sugar Cake",
      description:
          "Numerous small, vibrant yellow steamed cakes, which appear to be Nôm Chak (sometimes called Noum Chak or Num Chak). This sweet treat is traditionally made from rice flour, palm sugar, and coconut milk, giving it its distinctive color and sweet flavor. Each cake is nestled in a small cup or wrap made of fresh banana leaf and topped with a garnish of shredded fresh coconut, making them a popular snack or dessert found at markets and street stalls.",
      price: 1.50,
      rating: 4.3,
      imagePath: "assets/images/cakekh/kh1.jpg",
      category: FoodCategory.khmercakes,
      availableAddons: [
        Addon(name: "Extra Coconut", price: 0.50),
        Addon(name: "Palm Sugar Syrup", price: 0.75),
        Addon(name: "Sesame Seeds", price: 0.25),
        Addon(name: "Box of 6", price: 8.00),
      ],
    ),
    Food(
      name: "Floating Dumplings",
      description:
          "These sweet dumplings, typically made from rice flour, may be filled with mung bean paste, palm sugar, or left plain. They are beautifully presented in small, boat-shaped cups made from banana leaves and are often served in a sweet ginger syrup or, as shown here, topped with a generous pile of finely shredded coconut.",
      price: 2.25,
      rating: 4.5,
      imagePath: "assets/images/cakekh/kh2.jpg",
      category: FoodCategory.khmercakes,
      availableAddons: [
        Addon(name: "Ginger Syrup", price: 0.75),
        Addon(name: "Extra Coconut", price: 0.50),
        Addon(name: "Mung Bean Filling", price: 1.00),
        Addon(name: "Set of 8", price: 16.00),
      ],
    ),
    Food(
      name: "Num Kom",
      description:
          "A collection of sweet Num Kom, or sticky rice dumplings. Some are wrapped in square packages of banana leaf for steaming, while two unwrapped ones show the interior. The sweet filling, visible in the sliced dumpling, is typically made from a mixture of shredded coconut and palm sugar, encased in a soft, white shell of glutinous rice flour dough. The contrasting colors of the sweet filling and the white exterior make this a classic treat.",
      price: 2.00,
      rating: 4.4,
      imagePath: "assets/images/cakekh/kh3.jpg",
      category: FoodCategory.khmercakes,
      availableAddons: [
        Addon(name: "Extra Palm Sugar", price: 0.50),
        Addon(name: "Toasted Sesame", price: 0.35),
        Addon(name: "Coconut Cream", price: 0.75),
        Addon(name: "Family Pack (12pcs)", price: 20.00),
      ],
    ),
    Food(
      name: "Fermented Pork Sausage",
      description:
          "The sausage is made of ground pork and spices, then tightly wrapped in banana leaves and secured with rubber bands for fermentation. The image displays a large pile of these green-wrapped rolls, with one unwrapped sausage in the center showing its light, grainy, pinkish-white texture.",
      price: 3.50,
      rating: 4.2,
      imagePath: "assets/images/cakekh/kh4.jpg",
      category: FoodCategory.khmercakes,
      availableAddons: [
        Addon(name: "Fresh Herbs", price: 1.00),
        Addon(name: "Chili Dip", price: 0.75),
        Addon(name: "Sticky Rice", price: 1.50),
        Addon(name: "Pickled Vegetables", price: 1.25),
      ],
    ),
    Food(
      name: "Sweet Sticky Rice Cake",
      description:
          "This platter features pieces of firm, sweet sticky rice cake (often called Num Kôk or sometimes a slice of Num Ansom Chek). The rice has been cooked with sugar or coconut milk and then pressed into thick, flat slabs, giving it a dense, slightly chewy texture. The cakes are sprinkled with sesame seeds and are served alongside a woven basket filled with fluffy shredded fresh coconut to sprinkle on top, enhancing the flavor and presentation.",
      price: 2.75,
      rating: 4.3,
      imagePath: "assets/images/cakekh/kh5.jpg",
      category: FoodCategory.khmercakes,
      availableAddons: [
        Addon(name: "Extra Coconut", price: 0.75),
        Addon(name: "Palm Sugar Drizzle", price: 0.50),
        Addon(name: "Toasted Mung Beans", price: 0.65),
        Addon(name: "Large Slab", price: 8.50),
      ],
    ),
    Food(
      name: "Coconut-Rice Pancakes",
      description:
          "These savory-sweet delicacies are made from a batter of rice flour and rich coconut milk, which is poured into a special griddle (similar to a Danish aebleskiver pan). They have a distinct texture: crispy, browned edges and a soft, slightly creamy center. They are typically sold in sets and enjoyed as a light snack.",
      price: 2.50,
      rating: 4.6,
      imagePath: "assets/images/cakekh/kh6.jpg",
      category: FoodCategory.khmercakes,
      availableAddons: [
        Addon(name: "Green Onion Scallions", price: 0.50),
        Addon(name: "Sweet Chili Sauce", price: 0.45),
        Addon(name: "Extra Crispy", price: 0.75),
        Addon(name: "Dozen Pack", price: 25.00),
      ],
    ),
    Food(
      name: "Sankhya Lapov",
      description:
          "This stunning dessert is Sankhya Lapov (also spelled Sangkya Lapov), or Pumpkin Custard. It is made by hollowing out a whole pumpkin (or squash), filling it with a rich mixture of coconut milk, palm sugar, and egg (custard), and then steaming the entire thing until the custard is set and the pumpkin is tender. The image shows the beautiful result, with the pumpkin cut open to reveal the creamy, golden custard inside.",
      price: 6.50,
      rating: 4.8,
      imagePath: "assets/images/cakekh/kh7.jpg",
      category: FoodCategory.khmercakes,
      availableAddons: [
        Addon(name: "Extra Custard", price: 1.50),
        Addon(name: "Coconut Cream", price: 1.00),
        Addon(name: "Palm Sugar Syrup", price: 0.75),
        Addon(name: "Whole Pumpkin", price: 12.00),
      ],
    ),
    Food(
      name: "Num Chak-Kachan",
      description:
          "This beautifully arranged dessert is a type of layered cake, often referred to as Num Chak-Kachan (similar to the Thai Khanom Chan). The cake is steamed in thin layers, alternating between light and darker shades of green, with the color and aroma coming from pandan leaf extract. The sticky, chewy cake has been cut into decorative, diamond-shaped pieces and garnished with white sesame seeds, displayed attractively on a banana leaf.",
      price: 3.25,
      rating: 4.5,
      imagePath: "assets/images/cakekh/kh8.jpg",
      category: FoodCategory.khmercakes,
      availableAddons: [
        Addon(name: "Coconut Cream Dip", price: 0.85),
        Addon(name: "Pandan Flavor Boost", price: 0.60),
        Addon(name: "Toasted Coconut", price: 0.75),
        Addon(name: "Gift Box", price: 15.00),
      ],
    ),
    Food(
      name: "Cotton Candy Crepes",
      description:
          "This popular street-food dessert, while widely known in Thailand, is also enjoyed in the region. It features fine, golden threads of spun sugar (similar to cotton candy) rolled inside soft, thin pandan-flavored green crepes. The image shows several of these finished rolls, with the delicate, sweet threads of sugar floss visible inside the bright green wrapper. It is a wonderfully contrasting combination of soft, light texture and intense sweetness.",
      price: 2.00,
      rating: 4.4,
      imagePath: "assets/images/cakekh/kh9.jpg",
      category: FoodCategory.khmercakes,
      availableAddons: [
        Addon(name: "Extra Sugar Floss", price: 0.50),
        Addon(name: "Chocolate Drizzle", price: 0.75),
        Addon(name: "Condensed Milk", price: 0.45),
        Addon(name: "Set of 4", price: 7.00),
      ],
    ),
    Food(
      name: "Num Korng",
      description:
          "This plate features several small, deep-fried sweets that look like Num Korng (or similar to the Vietnamese Bánh Cam / Bánh Tiêu). These are essentially small, glazed doughnuts. They can be either ring-shaped or round-shaped and are typically made from glutinous rice flour dough, deep-fried until golden, and then coated in a sticky palm sugar glaze and sprinkled with white sesame seeds. They are a popular chewy, sweet street-side snack.",
      price: 1.75,
      rating: 4.3,
      imagePath: "assets/images/cakekh/kh10.jpg",
      category: FoodCategory.khmercakes,
      availableAddons: [
        Addon(name: "Extra Glaze", price: 0.40),
        Addon(name: "Sesame Coating", price: 0.30),
        Addon(name: "Mung Bean Filling", price: 0.85),
        Addon(name: "Dozen Pack", price: 18.00),
      ],
    ),

    // drinks
    Food(
      name: "7UP",
      description:
          "Crisp, clean, and refreshing lemon-lime soda with a bright, bubbly taste. Perfectly carbonated with a smooth finish that quenches your thirst without being too sweet. A classic choice for any meal.",
      price: 1.25,
      rating: 4.3,
      imagePath: 'assets/images/drink/7up.jpg',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon Slice", price: 0.25),
        Addon(name: "Extra Ice", price: 0.15),
        Addon(name: "Large Bottle", price: 0.75),
        Addon(name: "Straw", price: 0.10),
      ],
    ),
    Food(
      name: "Coca-Cola",
      description:
          "The world's most popular carbonated beverage with its signature caramel flavor and refreshing fizz. Perfect balance of sweetness and carbonation that pairs well with any meal or stands alone as a classic refreshment.",
      price: 1.50,
      rating: 4.7,
      imagePath: 'assets/images/drink/coca.jpg',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon Wedge", price: 0.25),
        Addon(name: "Vanilla Syrup", price: 0.50),
        Addon(name: "Large Size", price: 1.00),
        Addon(name: "With Ice", price: 0.15),
      ],
    ),
    Food(
      name: "Fanta",
      description:
          "Bright and bubbly orange soda bursting with sweet citrus flavor. Vibrant orange color and refreshing taste that brings a fun, fruity twist to your beverage selection. Caffeine-free and perfect for all ages.",
      price: 1.25,
      rating: 4.4,
      imagePath: 'assets/images/drink/fanta.jpg',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Orange Slice", price: 0.30),
        Addon(name: "Extra Fizzy", price: 0.20),
        Addon(name: "Large Bottle", price: 0.75),
        Addon(name: "Straw", price: 0.10),
      ],
    ),
    Food(
      name: "Mirinda",
      description:
          "Zesty orange soft drink with a bold, fruity flavor profile. Known for its intense citrus taste and bright carbonation that delivers a refreshing burst of sweetness with every sip.",
      price: 1.20,
      rating: 4.2,
      imagePath: 'assets/images/drink/mirida.jpg',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Orange Garnish", price: 0.30),
        Addon(name: "Extra Cold", price: 0.15),
        Addon(name: "Large Size", price: 0.70),
        Addon(name: "With Ice", price: 0.15),
      ],
    ),
    Food(
      name: "Monster Energy",
      description:
          "High-performance energy drink designed to deliver intense energy and focus. Features a unique blend of caffeine, B-vitamins, and energy ingredients with a sweet, slightly tart flavor that powers you through your day.",
      price: 2.75,
      rating: 4.5,
      imagePath: 'assets/images/drink/monster.jpg',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Cold", price: 0.25),
        Addon(name: "Sugar Free", price: 0.50),
        Addon(name: "Large Can", price: 1.25),
        Addon(name: "With Glass", price: 0.20),
      ],
    ),
    Food(
      name: "Pepsi",
      description:
          "Classic cola with a slightly sweeter, smoother taste profile. Refreshing carbonated beverage that offers a perfect balance of sweetness and fizz, making it a favorite choice for cola lovers worldwide.",
      price: 1.45,
      rating: 4.6,
      imagePath: 'assets/images/drink/pepsi.jpg',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon Twist", price: 0.25),
        Addon(name: "Cherry Flavor", price: 0.45),
        Addon(name: "Large Size", price: 0.85),
        Addon(name: "Extra Ice", price: 0.15),
      ],
    ),
    Food(
      name: "Pocari Sweat",
      description:
          "Japanese ion supply drink designed to replenish lost fluids and electrolytes. Mild, refreshing taste that's not too sweet, perfect for rehydration after exercise or in hot weather. Helps maintain body fluid balance effectively.",
      price: 2.00,
      rating: 4.3,
      imagePath: 'assets/images/drink/pocarisweat.jpg',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon Slice", price: 0.25),
        Addon(name: "Extra Cold", price: 0.20),
        Addon(name: "Large Bottle", price: 1.00),
        Addon(name: "With Ice", price: 0.15),
      ],
    ),
    Food(
      name: "Red Bull",
      description:
          "The original energy drink that gives you wings! Provides vitalizing effects with its distinctive sweet-tart flavor and carbonated energy boost. Improves performance, concentration and reaction speed when you need it most.",
      price: 3.00,
      rating: 4.6,
      imagePath: 'assets/images/drink/redbull.jpg',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Cold", price: 0.30),
        Addon(name: "Sugar Free", price: 0.25),
        Addon(name: "Large Can", price: 1.50),
        Addon(name: "With Glass", price: 0.25),
      ],
    ),
    Food(
      name: "Sting Energy",
      description:
          "Powerful energy drink delivering a strong boost with high caffeine content and energy blend. Known for its intense energy kick and fruity flavor profile, perfect for students, workers and athletes needing an extra push.",
      price: 2.25,
      rating: 4.3,
      imagePath: 'assets/images/drink/sting.jpg',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Cold", price: 0.20),
        Addon(name: "Different Flavor", price: 0.15),
        Addon(name: "Large Can", price: 1.00),
        Addon(name: "With Ice", price: 0.15),
      ],
    ),
    Food(
      name: "Bottled Water",
      description:
          "Pure, refreshing bottled water sourced from natural springs. Crystal clear and perfectly hydrating, going through rigorous purification processes to ensure the highest quality and taste. Essential for staying hydrated and healthy.",
      price: 0.75,
      rating: 4.1,
      imagePath: 'assets/images/drink/water.jpg',
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Lemon Slice", price: 0.25),
        Addon(name: "Mint Leaves", price: 0.35),
        Addon(name: "Cucumber Slice", price: 0.30),
        Addon(name: "Extra Cold", price: 0.15),
      ],
    ),

    // food
    Food(
      name: "Lok Lak",
      description:
          "This colorful platter features Lok Lak, a popular Cambodian dish. It consists of slices of marinated and stir-fried beef (the shaken part of the name refers to the quick cooking motion), typically served over a bed of fresh lettuce. The beef is accompanied by an elaborate presentation of sliced cucumbers, tomatoes, and raw onion rings. A crucial component is the dipping sauce (Tuk Meric), which is a mix of lime juice, salt, pepper, and often chili, served on the side.",
      price: 8.50,
      rating: 4.7,
      imagePath: 'assets/images/food/food1.jpg',
      category: FoodCategory.foods,
      availableAddons: [
        Addon(name: "Extra Beef", price: 3.50),
        Addon(name: "Fried Egg", price: 1.25),
        Addon(name: "Sticky Rice", price: 1.75),
        Addon(name: "Extra Vegetables", price: 1.50),
      ],
    ),
    Food(
      name: "Grilled Pork/Beef with Vegetables",
      description:
          "Slices of beautifully caramelized, grilled meat are served on a plate with an abundance of fresh, raw vegetables for wrapping, including lettuce, long beans, and herbs like basil. It is traditionally served with a bamboo basket of Sticky Rice (Khao Niao) and a small bowl of spicy dipping sauce (Tuk Trey or Jaew), often made with chili, fish sauce, lime, and toasted rice powder.",
      price: 7.75,
      rating: 4.6,
      imagePath: 'assets/images/food/food2.jpg',
      category: FoodCategory.foods,
      availableAddons: [
        Addon(name: "Extra Meat", price: 3.00),
        Addon(name: "Extra Dipping Sauce", price: 0.75),
        Addon(name: "Herb Platter", price: 1.25),
        Addon(name: "Rice Noodles", price: 1.50),
      ],
    ),
    Food(
      name: "Steamed Fish Amok",
      description:
          "This is the national dish of Cambodia, Amok Trey or Fish Amok. It is a rich, savory mousse or curry made from fish, coconut milk, kroeung (a Cambodian spice paste), and noni leaves. The mixture is poured into a little vessel fashioned from banana leaves, then steamed until it sets into a soft, luxurious texture. It is often garnished with strips of red chili and fresh cilantro, and served in the banana leaf cup resting in a woven basket.",
      price: 9.25,
      rating: 4.8,
      imagePath: 'assets/images/food/food3.jpg',
      category: FoodCategory.foods,
      availableAddons: [
        Addon(name: "Extra Fish", price: 4.00),
        Addon(name: "Coconut Cream", price: 1.25),
        Addon(name: "Steamed Rice", price: 1.50),
        Addon(name: "Extra Kroeung Paste", price: 0.75),
      ],
    ),
    Food(
      name: "Prahok Ktis / Bong Ktis",
      description:
          "This is a dish centered around a rich, creamy dip, likely Prahok Ktis or a similar style of coconut cream-based pork/fermented fish dip. The dip, served in the white bowl, is made with Prahok (fermented fish paste), ground pork, chili, and coconut cream, and is cooked until thick. It is a savory, strongly flavored dip traditionally served with a wide array of fresh and blanched raw vegetables, such as cabbage, cucumbers, eggplants, and morning glory, for dipping.",
      price: 6.50,
      rating: 4.4,
      imagePath: 'assets/images/food/food4.jpg',
      category: FoodCategory.foods,
      availableAddons: [
        Addon(name: "Extra Vegetable Platter", price: 2.25),
        Addon(name: "Ground Pork", price: 2.50),
        Addon(name: "Sticky Rice", price: 1.75),
        Addon(name: "Extra Prahok", price: 1.00),
      ],
    ),
    Food(
      name: "Khmer Green Chicken Curry",
      description:
          "This deep bowl contains a flavorful Cambodian-style curry, likely Somlor Kari Sach Mon (Khmer Chicken Curry). It is a rich, yellow-green curry featuring chicken, bamboo shoots, eggplant, and various green herbs. Unlike Thai curry, Khmer curry often has a milder, sweeter flavor profile from the use of kroeung and less chili. The bowl is surrounded by the fresh herbs and spices used in its preparation, highlighting its fresh, rustic nature.",
      price: 8.00,
      rating: 4.5,
      imagePath: 'assets/images/food/food5.jpg',
      category: FoodCategory.foods,
      availableAddons: [
        Addon(name: "Extra Chicken", price: 3.25),
        Addon(name: "Bamboo Shoots", price: 1.50),
        Addon(name: "Jasmine Rice", price: 1.50),
        Addon(name: "Coconut Milk", price: 1.00),
      ],
    ),
    Food(
      name: "Sour Fish Soup",
      description:
          "It is a light, sour, and refreshing broth, a staple of Cambodian cuisine. The soup contains generous pieces of fish, light green leafy vegetables (like morning glory or watercress), and sometimes ingredients like lotus stems or banana blossom. It is often seasoned with small slices of red or orange chili, which give it a bright flavor and visual appeal.",
      price: 7.25,
      rating: 4.3,
      imagePath: 'assets/images/food/food6.jpg',
      category: FoodCategory.foods,
      availableAddons: [
        Addon(name: "Extra Fish", price: 3.50),
        Addon(name: "Morning Glory", price: 1.25),
        Addon(name: "Lotus Stem", price: 1.75),
        Addon(name: "Tamarind Paste", price: 0.75),
      ],
    ),
    Food(
      name: "Mackerel with Rice Vermicelli",
      description:
          "This platter is a common Southeast Asian combination featuring pieces of whole, fried mackerel fish (Trey Khang Korb). The fish is served alongside a nest of soft rice vermicelli noodles and a vibrant array of fresh lettuce and cucumber. The entire meal is meant to be dipped into the accompanying bowl of zesty, thick chili dipping sauce (Tuk Trey), which balances the richness of the fried fish.",
      price: 8.75,
      rating: 4.6,
      imagePath: 'assets/images/food/food7.jpg',
      category: FoodCategory.foods,
      availableAddons: [
        Addon(name: "Extra Mackerel", price: 4.25),
        Addon(name: "Rice Vermicelli", price: 1.50),
        Addon(name: "Extra Dipping Sauce", price: 0.75),
        Addon(name: "Fresh Herb Salad", price: 1.25),
      ],
    ),
    Food(
      name: "Roasted Whole Chicken",
      description:
          "This is a striking presentation of a whole roasted chicken (Ang Sar). The chicken has been seasoned and roasted to a beautiful golden-brown color and has a glossy, crispy skin. It is served atop a bed of green banana leaves and surrounded by an artistic arrangement of fresh, raw vegetables and herbs for garnish and dipping, including carved cucumbers and carrots, making it a centerpiece dish for a gathering.",
      price: 15.50,
      rating: 4.7,
      imagePath: 'assets/images/food/food8.jpg',
      category: FoodCategory.foods,
      availableAddons: [
        Addon(name: "Garlic Sauce", price: 1.25),
        Addon(name: "Sweet Chili Dip", price: 0.75),
        Addon(name: "Steamed Rice", price: 2.00),
        Addon(name: "Pickled Vegetables", price: 1.50),
      ],
    ),
    Food(
      name: "Roasted Suckling Pig",
      description:
          "The beautifully plated, golden-red skin and meat of a Roasted Suckling Pig (Sach Chruk Ang). The entire piece has been expertly roasted to achieve a highly desirable, crisp, and crackly skin. The pig has been sliced into manageable pieces and is presented on a bed of fresh lettuce leaves, ready to be served as an appetizer or main course, prized for its texture and flavor.",
      price: 24.99,
      rating: 4.9,
      imagePath: 'assets/images/food/food9.jpg',
      category: FoodCategory.foods,
      availableAddons: [
        Addon(name: "Plum Sauce", price: 1.50),
        Addon(name: "Cucumber Salad", price: 2.25),
        Addon(name: "Steamed Buns", price: 3.00),
        Addon(name: "Extra Crispy Skin", price: 4.50),
      ],
    ),
    Food(
      name: "Fried Chicken with Sambal",
      description:
          "This is a plate featuring a piece of Fried Chicken Leg (similar to Ayam Goreng in neighboring Indonesia/Malaysia). The chicken is deep-fried to a golden crispness. It is served with a side of refreshing fresh vegetables—lettuce, cucumber, and tomato—and a generous dollop of vibrant, spicy Sambal (chili paste) for dipping, which provides a strong, fiery counterpoint to the savory chicken.",
      price: 6.75,
      rating: 4.4,
      imagePath: 'assets/images/food/food10.jpg',
      category: FoodCategory.foods,
      availableAddons: [
        Addon(name: "Extra Chicken Piece", price: 3.50),
        Addon(name: "Extra Sambal", price: 0.75),
        Addon(name: "Steamed Rice", price: 1.50),
        Addon(name: "Fried Shallots", price: 0.50),
      ],
    ),

    // ice cream
    Food(
      name: "Fudge Brownie A La Mode",
      description:
          "This is a classic dessert presentation featuring a warm, dense chocolate brownie as the base. It is topped with a scoop of vanilla ice cream (A La Mode), and generously drizzled with a thick, glossy chocolate fudge or syrup, which has pooled around the edges of the brownie. The dessert is elegantly garnished with fresh mint leaves and served on a dark plate, highlighting the rich colors.",
      price: 6.75,
      rating: 4.7,
      imagePath: 'assets/images/icecream/i1.jpg',
      category: FoodCategory.icecreams,
      availableAddons: [
        Addon(name: "Extra Fudge Sauce", price: 0.75),
        Addon(name: "Whipped Cream", price: 0.50),
        Addon(name: "Vanilla Ice Cream", price: 1.25),
        Addon(name: "Walnuts", price: 0.65),
      ],
    ),
    Food(
      name: "Brownie Sundae",
      description:
          "This dessert also features a square of dark chocolate brownie heavily drizzled with chocolate sauce. It is topped with a large scoop of vanilla ice cream. This particular sundae is garnished with small pieces of hazelnuts or chopped nuts, adding a crunchy texture contrast to the warm, soft brownie and cold, creamy ice cream. The ambient lighting gives it a warm, cozy feel.",
      price: 7.25,
      rating: 4.6,
      imagePath: 'assets/images/icecream/i2.jpg',
      category: FoodCategory.icecreams,
      availableAddons: [
        Addon(name: "Caramel Sauce", price: 0.75),
        Addon(name: "Mixed Nuts", price: 0.85),
        Addon(name: "Extra Scoop", price: 1.50),
        Addon(name: "Cherries", price: 0.45),
      ],
    ),
    Food(
      name: "Cookies and Cream Ice Cream",
      description:
          "This close-up shot features a large glass bowl filled with several scoops of Cookies and Cream Ice Cream. This popular flavor consists of creamy vanilla-flavored ice cream mixed with generous chunks of dark chocolate sandwich cookies. The texture is visibly rich and creamy, with the dark cookie pieces contrasting sharply with the white ice cream base.",
      price: 5.50,
      rating: 4.8,
      imagePath: 'assets/images/icecream/i3.jpg',
      category: FoodCategory.icecreams,
      availableAddons: [
        Addon(name: "Extra Cookie Crumbles", price: 0.60),
        Addon(name: "Chocolate Shell", price: 0.85),
        Addon(name: "Oreo Pieces", price: 0.75),
        Addon(name: "Waffle Bowl", price: 1.25),
      ],
    ),
    Food(
      name: "Chocolate Ice Cream with Mint",
      description:
          "A small white bowl holding three scoops of rich Chocolate Ice Cream. The ice cream appears to be dark and intensely flavored, possibly containing small chocolate chip or chunk inclusions. It is elegantly garnished with small pieces of solid dark chocolate and sprigs of fresh mint leaves, which are often paired with chocolate for flavor. The background shows more chocolate pieces and cocoa powder.",
      price: 5.25,
      rating: 4.5,
      imagePath: 'assets/images/icecream/i4.jpg',
      category: FoodCategory.icecreams,
      availableAddons: [
        Addon(name: "Chocolate Chips", price: 0.55),
        Addon(name: "Mint Chocolate Sauce", price: 0.70),
        Addon(name: "Chocolate Shavings", price: 0.65),
        Addon(name: "Extra Mint", price: 0.30),
      ],
    ),
    Food(
      name: "Banana Crumble Soft Serve Cones",
      description:
          "A series of waffle cones are featured here, each topped with a tall swirl of creamy vanilla soft-serve ice cream. The cones are decorated generously with cookie crumbs or crushed granola for a crunchy topping, and each is crowned with a slice of fresh banana, suggesting a banana split or banana cream flavor profile.",
      price: 4.75,
      rating: 4.4,
      imagePath: 'assets/images/icecream/i5.jpg',
      category: FoodCategory.icecreams,
      availableAddons: [
        Addon(name: "Extra Banana", price: 0.50),
        Addon(name: "Caramel Drizzle", price: 0.65),
        Addon(name: "Granola Topping", price: 0.75),
        Addon(name: "Chocolate Dip", price: 0.85),
      ],
    ),
    Food(
      name: "Triple Ice Cream Cones with Berries",
      description:
          "Three classic waffle cones, each holding a large scoop of ice cream. The flavors include plain white (vanilla/cream), pink (strawberry/raspberry), and another scoop of white. Each cone is drizzled with sauce (red berry and chocolate) and garnished with a mint sprig. The cones are surrounded by a vibrant mix of fresh strawberries (cut and whole) and deep blue blueberries.",
      price: 8.50,
      rating: 4.7,
      imagePath: 'assets/images/icecream/i6.jpg',
      category: FoodCategory.icecreams,
      availableAddons: [
        Addon(name: "Mixed Berries", price: 1.25),
        Addon(name: "Berry Sauce", price: 0.75),
        Addon(name: "Extra Scoop", price: 1.75),
        Addon(name: "Sugar Cone", price: 0.45),
      ],
    ),
    Food(
      name: "Strawberry Parfait/Sundae",
      description:
          "Two tall, elegant glasses filled with a decadent Strawberry Parfait or Sundae. The base consists of layers of sliced fresh strawberries and what appears to be a creamy base (possibly ice cream, custard, or whipped cream). The dessert is extravagantly topped with a massive swirl of piped whipped cream, more fresh strawberries, and small, colorful macarons for an upscale presentation.",
      price: 7.95,
      rating: 4.8,
      imagePath: 'assets/images/icecream/i7.jpg',
      category: FoodCategory.icecreams,
      availableAddons: [
        Addon(name: "Extra Strawberries", price: 1.00),
        Addon(name: "Whipped Cream", price: 0.60),
        Addon(name: "Strawberry Syrup", price: 0.70),
        Addon(name: "Macarons", price: 1.50),
      ],
    ),
    Food(
      name: "Pistachio Soft Serve",
      description:
          "This striking image features a high swirl of vibrant, pale green soft-serve ice cream in a small white bowl. The color suggests a flavor like Matcha Green Tea or Pistachio. The texture is light and fluffy, characteristic of soft serve. The bowl is accompanied by two stacked, crispy waffle cones and a small mint leaf, indicating a fresh, premium flavor.",
      price: 5.75,
      rating: 4.6,
      imagePath: 'assets/images/icecream/i8.jpg',
      category: FoodCategory.icecreams,
      availableAddons: [
        Addon(name: "Pistachio Crumbles", price: 0.80),
        Addon(name: "Honey Drizzle", price: 0.65),
        Addon(name: "Waffle Cone Pieces", price: 0.55),
        Addon(name: "Rose Water", price: 0.45),
      ],
    ),
    Food(
      name: "Vanilla Soft Serve with Candy Topping",
      description:
          "Classic cup of vanilla soft-serve ice cream in a white styrofoam container. The smooth, swirling ice cream is loaded with a topping of brightly colored, round candy-coated chocolates (like M&M's), representing a popular combination for customized frozen yogurt or soft-serve desserts.",
      price: 4.50,
      rating: 4.3,
      imagePath: 'assets/images/icecream/i9.jpg',
      category: FoodCategory.icecreams,
      availableAddons: [
        Addon(name: "Candy Mix", price: 0.85),
        Addon(name: "Sprinkles", price: 0.45),
        Addon(name: "Chocolate Chips", price: 0.55),
        Addon(name: "Caramel Swirl", price: 0.65),
      ],
    ),
    Food(
      name: "Fruit-Topped Soft Serve",
      description:
          "A close-up of a cup of pale yellow or creamy white soft-serve ice cream is shown here. The ice cream has a classic high peak and is topped generously with diced fresh fruit, likely peaches or mangoes. This simple, colorful combination is common in frozen yogurt or fruit-flavored soft-serve, emphasizing fresh ingredients.",
      price: 5.25,
      rating: 4.5,
      imagePath: 'assets/images/icecream/i10.jpg',
      category: FoodCategory.icecreams,
      availableAddons: [
        Addon(name: "Mixed Fruit", price: 1.15),
        Addon(name: "Honey", price: 0.50),
        Addon(name: "Granola", price: 0.75),
        Addon(name: "Yogurt Swirl", price: 0.85),
      ],
    ),

    // khmer food
    Food(
      name: "Num Banh Chok Khmer",
      description:
          "Num Banh Chok, also known as Khmer Noodles, is one of Cambodia's most iconic and quintessential dishes, often consumed for breakfast or lunch. It consists of fresh, lightly fermented rice noodles that are served doused in an aromatic fish-based curry, gravy, or soup. A common variation is Num Banh Chok Samlor Proher, featuring a yellow-green coconut-based fish curry that is rich and creamy, while Num Banh Chok Samlor Cari uses a red curry base with coconut milk and fish. The dish is generously topped with a wealth of fresh herbs, seasonal vegetables, and often wild herbs.",
      price: 3.5,
      rating: 4.7,
      imagePath: 'assets/images/kh/f1.jpg',
      category: FoodCategory.khmerfoods,
      availableAddons: [
        Addon(name: "Extra Fish", price: 1.5),
        Addon(name: "Additional Herbs", price: 0.5),
        Addon(name: "Coconut Cream", price: 0.8),
        Addon(name: "Spicy Chili", price: 0.3),
      ],
    ),
    Food(
      name: "Num Banh Chok Terk Trey",
      description:
          "The star components are a generous mound of fresh, lightly-fermented rice noodles served at room temperature, accompanied by cooked cockles and peeled shrimp. The noodles and seafood are surrounded by an abundance of fresh herbs and raw vegetables, which may include mint and lettuce. In this particular presentation, the sauce is served on the side in a small bowl, and its yellow-green color and chunky texture suggest a sweet and savory dipping sauce made with fish sauce (Teuk Trey) and possibly ground peanuts and dried shrimp, which is a regional style often found in places like Kampot or a variation of Teuk Pra Hok (fermented fish paste sauce). This style of eating is an interactive meal, where the diner takes a handful of noodles, adds the fresh greens and seafood, and dips it into the sauce to create a flavorful bite.",
      price: 5.2,
      rating: 4.5,
      imagePath: 'assets/images/kh/f2.jpg',
      category: FoodCategory.khmerfoods,
      availableAddons: [
        Addon(name: "Extra Shrimp", price: 2.0),
        Addon(name: "Peanut Sauce", price: 0.7),
        Addon(name: "Fresh Cockles", price: 1.8),
        Addon(name: "Herb Platter", price: 1.0),
      ],
    ),
    Food(
      name: "Pong Tea Khon",
      description:
          "Pong Tea Kaun, also known as Balut, is a fertilized duck egg embryo that has been boiled or steamed and is eaten from the shell. It is a common street food and a popular snack across Cambodia. The Cambodian version is typically incubated for 18 to 20 days. The egg is often consumed with a simple but essential seasoning mix of salt, pepper, and lime juice, and sometimes with a bowl of fresh herbs and chili sauce to mask the richness.",
      price: 1.8,
      rating: 4.0,
      imagePath: 'assets/images/kh/f3.jpg',
      category: FoodCategory.khmerfoods,
      availableAddons: [
        Addon(name: "Extra Egg", price: 1.8),
        Addon(name: "Herb Bundle", price: 0.6),
        Addon(name: "Spicy Salt", price: 0.4),
        Addon(name: "Lime Wedges", price: 0.3),
      ],
    ),
    Food(
      name: "Nime Chow / Nem Srors",
      description:
          "Nime Chow, or Nem Srors, are fresh Cambodian spring rolls, often referred to internationally as summer rolls. They offer a light, raw, and refreshing combination of ingredients wrapped in delicate rice paper. The filling typically includes a mix of fresh vegetables, cellophane noodles, and commonly shrimp. These appetizers or snacks are served with a savory-sweet dipping sauce, with a peanut sauce being a very popular accompaniment.",
      price: 4.0,
      rating: 4.6,
      imagePath: 'assets/images/kh/f4.jpg',
      category: FoodCategory.khmerfoods,
      availableAddons: [
        Addon(name: "Extra Rolls", price: 2.5),
        Addon(name: "Peanut Sauce", price: 0.8),
        Addon(name: "Shrimp Filling", price: 1.5),
        Addon(name: "Vegetable Platter", price: 1.2),
      ],
    ),
    Food(
      name: "Khyang",
      description:
          "Khyang is the Khmer name for a common street food delicacy of edible river or paddyfield snails. These gastropods are a popular snack and can be found being sold by vendors along the streets. The snails are often stir-fried or prepared in other ways. They are traditionally served with a strong dipping sauce, such as the famous Tirk Trey Koh Kong, which is a potent garlic chili sauce.",
      price: 3.2,
      rating: 4.2,
      imagePath: 'assets/images/kh/f5.jpg',
      category: FoodCategory.khmerfoods,
      availableAddons: [
        Addon(name: "Extra Snails", price: 2.0),
        Addon(name: "Garlic Chili Sauce", price: 0.5),
        Addon(name: "Lemongrass", price: 0.6),
        Addon(name: "Fresh Herbs", price: 0.7),
      ],
    ),
    Food(
      name: "Banh Chheo",
      description:
          "Banh Chheo is the Cambodian name for the savory yellow crepe or pancake, which is a popular Southeast Asian dish. The vibrant yellow color of the crepe comes from turmeric in the batter. It is traditionally cooked until crispy and filled with a savory mixture that includes bean sprouts, shrimp, and pork belly. The pancake is often served with a variety of fresh herbs and lettuce, which are used to wrap pieces of the crepe before dipping them in a sauce.",
      price: 4.5,
      rating: 4.8,
      imagePath: 'assets/images/kh/f6.jpg',
      category: FoodCategory.khmerfoods,
      availableAddons: [
        Addon(name: "Extra Shrimp", price: 1.8),
        Addon(name: "Pork Belly", price: 1.5),
        Addon(name: "Fish Sauce Dip", price: 0.5),
        Addon(name: "Herb Platter", price: 1.0),
      ],
    ),
    Food(
      name: "Chruk Cheung Moan",
      description:
          "Chruk Cheung Moan literally means pickled chicken feet, representing a popular method of preparing this flavorful snack. Chicken feet are a common item in Cambodian cuisine and can also be prepared in other ways, such as a savory, garlic-infused flavor or marinated in a spicy pickled chili. They are valued for their tender texture and the savory, spiced, and often glazed sauces they are cooked in.",
      price: 2.8,
      rating: 4.1,
      imagePath: 'assets/images/kh/f7.jpg',
      category: FoodCategory.khmerfoods,
      availableAddons: [
        Addon(name: "Extra Chicken Feet", price: 2.0),
        Addon(name: "Spicy Marinade", price: 0.6),
        Addon(name: "Garlic Sauce", price: 0.5),
        Addon(name: "Pickled Vegetables", price: 0.8),
      ],
    ),
    Food(
      name: "Bra het jean",
      description:
          "Bra het jean refers to a popular and ubiquitous Khmer street food snack consisting of various kinds of pre-made meat, fish, or vegetable balls that are deep-fried and served on wooden skewers. While the balls themselves can be a mix of fish, beef, shrimp, or even vegetarian options like crab sticks and corn rolls (all generally referred to as bra het or 'meatballs'), the suffix signifies that they are fried. The image shows these golden-brown fried skewers being drenched in a thick, vibrant red, and likely spicy chili sauce, a signature preparation for this dish. They are typically finished with a garnish of chopped cilantro, and are a quick, savory, and chewy treat, often enjoyed with fresh vegetables like cucumber and herbs to balance the richness of the fried balls and the heat of the dipping sauce.",
      price: 2.5,
      rating: 4.3,
      imagePath: 'assets/images/kh/f8.jpg',
      category: FoodCategory.khmerfoods,
      availableAddons: [
        Addon(name: "Extra Skewers", price: 1.5),
        Addon(name: "Spicy Chili Sauce", price: 0.4),
        Addon(name: "Cucumber Slices", price: 0.5),
        Addon(name: "Mixed Meatballs", price: 1.2),
      ],
    ),
    Food(
      name: "Nom Krok",
      description:
          "Nom Krok are a very popular traditional Cambodian (Khmer) street food snack. They are little, round coconut-rice cakes or pancakes.They are made from a batter of rice flour and rich coconut cream/milk. The texture is often a crunchy or crispy shell surrounding a soft, custardy inner coconut filling.Nom Krok are cooked in a special pan with multiple hemispherical indentations, similar to a Danish æbleskiver pan or a Japanese takoyaki griddle.",
      price: 2.0,
      rating: 4.7,
      imagePath: 'assets/images/kh/f9.jpg',
      category: FoodCategory.khmerfoods,
      availableAddons: [
        Addon(name: "Extra Coconut", price: 0.8),
        Addon(name: "Palm Sugar Syrup", price: 0.5),
        Addon(name: "Sesame Seeds", price: 0.3),
        Addon(name: "Green Onions", price: 0.4),
      ],
    ),
    Food(
      name: "Sach Koh Ain",
      description:
          "Sach Koh Ain are marinated and grilled beef skewers, a staple of Cambodian barbecued street food. The beef is marinated and then cooked over charcoal, imparting a smoky flavor. This dish is distinguished by the use of Kroeung, a distinctive herb and spice paste featuring aromatics like lemongrass, which is often used in the marinade or as a dipping sauce.",
      price: 4.8,
      rating: 4.9,
      imagePath: 'assets/images/kh/f10.jpg',
      category: FoodCategory.khmerfoods,
      availableAddons: [
        Addon(name: "Extra Beef", price: 2.5),
        Addon(name: "Kroeung Sauce", price: 0.7),
        Addon(name: "Sticky Rice", price: 1.2),
        Addon(name: "Pickled Papaya", price: 0.9),
      ],
    ),

    // noodle
    Food(
      name: "Spicy Chili Oil Tossed Noodles",
      description:
          "This close-up shot features a large, dark bowl of hot, steaming noodles tossed in a vibrant, reddish-orange chili oil sauce. The noodles are being lifted high with chopsticks, showing off their glossy coating and the steam rising from the bowl. The dish is generously garnished with cilantro, bits of chili, and possibly ground peanuts or crisped garlic. Several fresh red chilies are scattered around the base of the bowl, emphasizing the spicy nature of this appealing dish.",
      price: 8.99,
      rating: 4.4,
      imagePath: 'assets/images/noodle/noodle1.jpg',
      category: FoodCategory.noodles,
      availableAddons: [
        Addon(name: "Extra Chili Oil", price: 1.00),
        Addon(name: "Crispy Garlic", price: 0.75),
        Addon(name: "Ground Peanuts", price: 0.50),
        Addon(name: "Soft Boiled Egg", price: 1.50),
      ],
    ),
    Food(
      name: "Budae Jjigae",
      description:
          "This appears to be a hearty, overflowing bowl of spicy noodle stew, reminiscent of Korean Budae Jjigae or a general Asian hot pot. The dish is rich with a variety of ingredients, including what looks like seafood such as shrimp and squid/calamari rings, slices of processed meat (like large, thick-cut hot dogs or luncheon meat), slices of beef, and vegetables like broccoli and enoki mushrooms. The variety of textures and the deep red broth suggest a flavorful and comforting meal.",
      price: 15.50,
      rating: 4.6,
      imagePath: 'assets/images/noodle/noodle2.jpg',
      category: FoodCategory.noodles,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 1.50),
        Addon(name: "Additional Ramen Noodles", price: 2.00),
        Addon(name: "Spicy Level Upgrade", price: 0.75),
        Addon(name: "Kimchi", price: 1.25),
      ],
    ),
    Food(
      name: "Miso Ramen with Chashu",
      description:
          "This is a classic bowl of Japanese Ramen with curly noodles submerged in a rich, reddish-orange broth, likely a spicy Miso or a flavored Tonkotsu base. The bowl is topped with traditional garnishes: slices of Chashu (braised pork belly), a halved Ajitama (marinated soft-boiled egg) with a bright orange yolk, strands of spicy, pickled Kimchi or fermented bamboo shoots, plenty of sliced green onions, and a large sheet of Nori (seaweed).",
      price: 13.75,
      rating: 4.7,
      imagePath: 'assets/images/noodle/noodle3.jpg',
      category: FoodCategory.noodles,
      availableAddons: [
        Addon(name: "Extra Chashu", price: 3.50),
        Addon(name: "Additional Ajitama Egg", price: 1.75),
        Addon(name: "Corn", price: 1.00),
        Addon(name: "Wood Ear Mushrooms", price: 0.75),
      ],
    ),
    Food(
      name: "Sesame Tossed Noodles",
      description:
          "A large, white bowl is overflowing with a mound of wavy, glossy yellow noodles. The noodles appear to be simply tossed in a light, savory seasoning like soy sauce, oyster sauce, or a light brown sauce, giving them a rich amber color. The only visible garnish is a light sprinkling of chopped green onions and possibly white sesame seeds, making this a focused, simple, and satisfying bowl of stir-fried or tossed noodles.",
      price: 9.25,
      rating: 4.2,
      imagePath: 'assets/images/noodle/noodle4.jpg',
      category: FoodCategory.noodles,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 3.00),
        Addon(name: "Sautéed Vegetables", price: 2.25),
        Addon(name: "Extra Sesame Sauce", price: 1.00),
        Addon(name: "Chili Flakes", price: 0.50),
      ],
    ),
    Food(
      name: "Pork Noodles",
      description:
          "A close-up view of a dark bowl filled with sauced, wavy noodles mixed with a generous topping of seasoned ground meat, likely pork or chicken. The entire dish is tossed in a savory, chili-based sauce that coats the noodles in a warm, brown hue. The dish is topped with a sprinkle of toasted sesame seeds and fresh, chopped cilantro or scallions, giving it a vibrant and earthy aroma.",
      price: 10.50,
      rating: 4.3,
      imagePath: 'assets/images/noodle/noodle5.jpg',
      category: FoodCategory.noodles,
      availableAddons: [
        Addon(name: "Extra Ground Pork", price: 2.50),
        Addon(name: "Pickled Vegetables", price: 1.25),
        Addon(name: "Soft Boiled Egg", price: 1.50),
        Addon(name: "Crispy Shallots", price: 0.75),
      ],
    ),
    Food(
      name: "Creamy Pork Belly Ramen",
      description:
          "This highly appetizing bowl features thick, curly noodles swimming in a creamy, pale yellow broth, characteristic of a rich Tonkotsu or Paitan Ramen. The dish is topped with several thick, caramelized slices of braised and seared pork belly, which appear exceptionally tender. It is further garnished with a generous scattering of chopped green onions and several halved soft-boiled eggs with perfectly runny, deep orange yolks.",
      price: 16.25,
      rating: 4.8,
      imagePath: 'assets/images/noodle/noodle6.jpg',
      category: FoodCategory.noodles,
      availableAddons: [
        Addon(name: "Extra Pork Belly", price: 4.00),
        Addon(name: "Black Garlic Oil", price: 1.25),
        Addon(name: "Bamboo Shoots", price: 1.00),
        Addon(name: "Seaweed Sheets", price: 0.75),
      ],
    ),
    Food(
      name: "Soy Sauce Noodles",
      description:
          "This dish consists of bright yellow, thin egg noodles served in a dark, savory soy-based sauce. On top of the noodles are slices of braised or roasted chicken breast, cut into thick pieces and drizzled with a glossy dark sauce. The chicken is neatly plated next to a large piece of steamed or blanched Bok Choy, with a spoonful of vibrant red chili sauce and some fresh green onion slices completing the presentation.",
      price: 11.75,
      rating: 4.1,
      imagePath: 'assets/images/noodle/noodle7.jpg',
      category: FoodCategory.noodles,
      availableAddons: [
        Addon(name: "Extra Chicken", price: 3.25),
        Addon(name: "Wontons", price: 2.50),
        Addon(name: "Baby Bok Choy", price: 1.75),
        Addon(name: "Chili Oil", price: 0.75),
      ],
    ),
    Food(
      name: "Beef Noodle Soup",
      description:
          "This is a bowl of aromatic Beef Noodle Soup featuring thin, straight noodles in a dark, rich, and clear broth. The noodles are topped with tender slices of braised beef and a significant amount of freshly sliced green onions. A halved soft-boiled egg with a bright yolk rests on the side. The photo includes several surrounding bowls with condiments like pickled ginger, chili powder, rice, and soy sauce, indicating a full and customizable meal.",
      price: 14.50,
      rating: 4.5,
      imagePath: 'assets/images/noodle/noodle8.jpg',
      category: FoodCategory.noodles,
      availableAddons: [
        Addon(name: "Extra Beef Brisket", price: 3.75),
        Addon(name: "Beef Tendon", price: 2.50),
        Addon(name: "Pickled Mustard Greens", price: 1.25),
        Addon(name: "Chinese Dough Fritters", price: 1.50),
      ],
    ),
    Food(
      name: "Noodle Soup with Seafood",
      description:
          "This visually stunning noodle soup is served in a rich, dark red broth, suggesting a Tom Yum or spicy Southeast Asian flavor base. It is incredibly well-furnished with various toppings, including both thin and wavy noodles, plump shrimp, white fish balls or meatballs, slices of fish cake, leafy green lettuce, red onion, a lime wedge, and a cluster of crispy fried wontons. The variety of ingredients makes it a deeply flavorful and textural bowl.",
      price: 17.99,
      rating: 4.7,
      imagePath: 'assets/images/noodle/noodle9.jpg',
      category: FoodCategory.noodles,
      availableAddons: [
        Addon(name: "Extra Shrimp", price: 4.50),
        Addon(name: "Squid", price: 3.25),
        Addon(name: "Mussels", price: 3.75),
        Addon(name: "Coconut Milk", price: 1.50),
      ],
    ),
    Food(
      name: "Braised Duck Leg Noodle Soup",
      description:
          "This rich bowl of soup features thin, light-colored noodles submerged in a savory, dark brown broth. The main feature is a large, crispy-skinned, slow-braised duck leg and thigh resting on the noodles, along with chunks of shredded duck and possibly pieces of duck intestine or tripe. The entire dish is topped with a garnish of chopped green onions and fresh cilantro.",
      price: 15.75,
      rating: 4.6,
      imagePath: 'assets/images/noodle/noodle10.jpg',
      category: FoodCategory.noodles,
      availableAddons: [
        Addon(name: "Extra Duck Leg", price: 5.50),
        Addon(name: "Duck Blood Cubes", price: 2.25),
        Addon(name: "Bean Sprouts", price: 1.00),
        Addon(name: "Fresh Basil", price: 0.75),
      ],
    ),

    // rice
    Food(
      name: "Steamed White Rice",
      description:
          "A cast iron or traditional pot filled with freshly steamed white rice. The rice is fluffy, perfectly cooked, and steaming, suggesting it was just prepared. A wooden spoon or paddle is resting in the pot, ready to serve. This is a staple in countless cuisines around the world and often serves as the foundational, simple carbohydrate side for savory main dishes.",
      price: 2.50,
      rating: 4.0,
      imagePath: 'assets/images/rice/rice1.jpg',
      category: FoodCategory.rices,
      availableAddons: [
        Addon(name: "Extra Large Portion", price: 1.50),
        Addon(name: "Garlic Butter Rice", price: 1.00),
        Addon(name: "Coconut Rice", price: 1.50),
        Addon(name: "Fried Egg", price: 1.00),
      ],
    ),
    Food(
      name: "Omelette Rice",
      description:
          "Omurice, a popular Japanese dish. It features savory fried rice—visible underneath the sliced top layer—that is molded into an elliptical shape and then covered completely with a thin, expertly cooked omelette. The dish is typically garnished with a zigzag drizzle of ketchup and a sprinkle of chopped parsley, combining simple ingredients into a comforting and visually appealing meal.",
      price: 8.99,
      rating: 4.7,
      imagePath: 'assets/images/rice/rice2.jpg',
      category: FoodCategory.rices,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 1.50),
        Addon(name: "Chicken Fillings", price: 2.50),
        Addon(name: "Demiglace Sauce", price: 1.00),
        Addon(name: "Extra Ketchup Design", price: 0.50),
      ],
    ),
    Food(
      name: "Shrimp Fried Rice",
      description:
          "The rice is lightly fried and mixed with peas and possibly other vegetables. It's topped with several plump, cooked shrimp and a perfectly cooked sunny-side-up egg with a bright yellow yolk. The plate is garnished with crisp lettuce and sliced tomatoes, making it a fresh and substantial meal.",
      price: 12.50,
      rating: 4.5,
      imagePath: 'assets/images/rice/rice3.jpg',
      category: FoodCategory.rices,
      availableAddons: [
        Addon(name: "Extra Shrimp", price: 3.50),
        Addon(name: "Chili Oil", price: 0.50),
        Addon(name: "Spring Onions", price: 0.30),
        Addon(name: "Sweet Chili Sauce", price: 0.40),
      ],
    ),
    Food(
      name: "Chicken and Scrambled",
      description:
          "This is a hearty serving of Fried Rice featuring pieces of cooked chicken or pork and bits of scrambled egg mixed throughout the grains. The dish is topped with a whole, sunny-side-up fried egg and garnished with sliced cucumbers, lettuce, tomatoes, and chopped green onions. This style of preparation is common in many Southeast and East Asian cuisines, often served with a side of chili sauce.",
      price: 9.75,
      rating: 4.3,
      imagePath: 'assets/images/rice/rice4.jpg',
      category: FoodCategory.rices,
      availableAddons: [
        Addon(name: "Extra Chicken", price: 2.00),
        Addon(name: "Pork Instead of Chicken", price: 1.50),
        Addon(name: "Thai Chili Sauce", price: 0.60),
        Addon(name: "Crispy Shallots", price: 0.80),
      ],
    ),
    Food(
      name: "Filipino Silog",
      description:
          "The centerpiece is a mound of white rice topped with a sunny-side-up egg. It is surrounded by various savory meats, including sliced steak (like Tapsilog) and links of sweet sausage (like Longganisa), along with side dishes like seasoned potatoes and a generous topping of chopped green onions.",
      price: 11.25,
      rating: 4.6,
      imagePath: 'assets/images/rice/rice5.jpg',
      category: FoodCategory.rices,
      availableAddons: [
        Addon(name: "Extra Egg", price: 1.00),
        Addon(name: "Garlic Rice", price: 1.20),
        Addon(name: "Atchara (Pickled Papaya)", price: 0.80),
        Addon(name: "Spicy Vinegar Dip", price: 0.40),
      ],
    ),
    Food(
      name: "Jollof Chicken Rice",
      description:
          "This is a plate of Jollof Rice, a famous West African dish. The rice is recognizable by its distinct red-orange color, achieved by cooking it in a mixture of tomatoes, tomato paste, onions, peppers, and spices. It is served with a succulent, glazed, and grilled chicken leg and garnished with fresh slices of tomato and green bell pepper.",
      price: 13.99,
      rating: 4.8,
      imagePath: 'assets/images/rice/rice6.jpg',
      category: FoodCategory.rices,
      availableAddons: [
        Addon(name: "Extra Chicken Piece", price: 4.00),
        Addon(name: "Plantains", price: 2.50),
        Addon(name: "Spicy Pepper Sauce", price: 0.70),
        Addon(name: "Coleslaw", price: 1.50),
      ],
    ),
    Food(
      name: "Brown Rice Power Bowl",
      description:
          "This is a wholesome rice bowl featuring a base of nutritious brown rice sprinkled with fresh parsley. The main protein is pieces of glazed, grilled chicken breast. The bowl is balanced with fresh, crisp garnishes, including a generous serving of lettuce and sliced cucumbers, creating a healthy and fresh meal.",
      price: 10.50,
      rating: 4.4,
      imagePath: 'assets/images/rice/rice7.jpg',
      category: FoodCategory.rices,
      availableAddons: [
        Addon(name: "Avocado Slices", price: 2.00),
        Addon(name: "Quinoa Mix", price: 1.80),
        Addon(name: "Tahini Dressing", price: 0.90),
        Addon(name: "Roasted Vegetables", price: 2.50),
      ],
    ),
    Food(
      name: "Teriyaki Chicken",
      description:
          "A classic Asian-inspired rice bowl. A mound of white rice is topped with bite-sized pieces of Teriyaki chicken glazed with a rich, dark sauce and sprinkled with sesame seeds. The meal is completed with vibrant vegetables, specifically fresh broccoli florets and fine julienned carrots.",
      price: 11.75,
      rating: 4.5,
      imagePath: 'assets/images/rice/rice8.jpg',
      category: FoodCategory.rices,
      availableAddons: [
        Addon(name: "Extra Teriyaki Sauce", price: 0.60),
        Addon(name: "Seaweed Salad", price: 2.00),
        Addon(name: "Edamame", price: 1.50),
        Addon(name: "Spicy Mayo", price: 0.70),
      ],
    ),
    Food(
      name: "Mango Sticky Rice",
      description:
          "Mango Sticky Rice, a popular Thai and Southeast Asian dessert. It consists of sweet, glutinous sticky rice that has been cooked in coconut milk and sugar, served alongside slices of fresh, ripe mango. The dish is garnished with toasted sesame seeds, crispy yellow mung beans, and a sprig of mint.",
      price: 6.50,
      rating: 4.9,
      imagePath: 'assets/images/rice/rice9.jpg',
      category: FoodCategory.rices,
      availableAddons: [
        Addon(name: "Extra Mango", price: 1.80),
        Addon(name: "Coconut Cream", price: 0.80),
        Addon(name: "Toasted Coconut Flakes", price: 0.60),
        Addon(name: "Sesame Seeds", price: 0.30),
      ],
    ),
    Food(
      name: "Forbidden Rice",
      description:
          "A simple white bowl filled with cooked Purple Rice (also known as Forbidden Rice or Black Rice). When cooked, the grains have a characteristic dark, purplish-maroon color and a slightly sticky texture. This whole-grain rice is valued for its nutritional content and is often used as a healthier substitute for white rice in various dishes.",
      price: 4.25,
      rating: 4.2,
      imagePath: 'assets/images/rice/rice10.jpg',
      category: FoodCategory.rices,
      availableAddons: [
        Addon(name: "Mixed Grains", price: 1.20),
        Addon(name: "Seasoned Seaweed", price: 1.00),
        Addon(name: "Sesame Oil Drizzle", price: 0.50),
        Addon(name: "Nutritional Yeast", price: 0.80),
      ],
    ),

    // seafood
    Food(
      name: "Glazed Salmon Fillets",
      description:
          "Two thick, rectangular fillets of salmon are presented on a white plate, coated in a glossy, dark glaze, likely a soy, honey, or teriyaki sauce, and sprinkled with fresh, chopped parsley or cilantro. The fish has a beautiful seared exterior and appears moist. The dish is garnished simply with several wedges of fresh lemon, which is a classic pairing for cooked fish to brighten the flavor.",
      price: 18.99,
      rating: 4.5,
      imagePath: 'assets/images/seafood/sea1.jpg',
      category: FoodCategory.seafoods,
      availableAddons: [
        Addon(name: "Extra Glaze Sauce", price: 1.50),
        Addon(name: "Steamed Jasmine Rice", price: 2.50),
        Addon(name: "Grilled Asparagus", price: 3.25),
        Addon(name: "Lemon Butter Sauce", price: 1.75),
      ],
    ),
    Food(
      name: "Crab in Rich Coconut",
      description:
          "A large, rustic bowl contains a whole cooked crab, submerged in a thick, rich, orange-yellow sauce, suggestive of a coconut curry or bisque. The cooked crab is displayed with its shell and a claw, indicating a whole, halved preparation. The sauce has oil separating from the broth, characteristic of a hearty curry. A half-slice of lemon rests on the side, and the dish is garnished with chopped herbs, possibly cilantro or kaffir lime leaves.",
      price: 24.50,
      rating: 4.6,
      imagePath: 'assets/images/seafood/sea2.jpg',
      category: FoodCategory.seafoods,
      availableAddons: [
        Addon(name: "Extra Coconut Curry", price: 3.00),
        Addon(name: "Garlic Naan", price: 2.75),
        Addon(name: "Jasmine Rice", price: 2.50),
        Addon(name: "Extra Crab Claw", price: 4.50),
      ],
    ),
    Food(
      name: "Seafood Stew/Curry",
      description:
          "A large, deep bowl is filled with a colorful and hearty seafood stew or curry. The dish is a vibrant mixture of large, whole shrimp, black-shelled mussels, white-shelled clams, and chunks of various vegetables, including large pieces of corn on the cob, yellow bell peppers, and diced tomatoes, all simmering in a rich, reddish-orange broth. This dish is similar to various regional seafood boils or a thick, flavor-packed curry.",
      price: 26.75,
      rating: 4.7,
      imagePath: 'assets/images/seafood/sea3.jpg',
      category: FoodCategory.seafoods,
      availableAddons: [
        Addon(name: "Extra Mussels", price: 5.25),
        Addon(name: "Additional Shrimp", price: 4.75),
        Addon(name: "Crusty Bread", price: 2.25),
        Addon(name: "Spicy Level Upgrade", price: 1.50),
      ],
    ),
    Food(
      name: "Grilled Prawn Skewers",
      description:
          "The prawns are served on a dark platter alongside a small dish of vibrant orange chili salt or ground chili dipping sauce (a common accompaniment in Vietnamese and regional Southeast Asian cuisine) and a wedge of lime or calamansi, which is typical for adding acidity to balance the richness of the grilled seafood.",
      price: 16.50,
      rating: 4.4,
      imagePath: 'assets/images/seafood/sea4.jpg',
      category: FoodCategory.seafoods,
      availableAddons: [
        Addon(name: "Extra Skewer", price: 4.25),
        Addon(name: "Peanut Dipping Sauce", price: 1.25),
        Addon(name: "Green Papaya Salad", price: 5.50),
        Addon(name: "Sticky Rice", price: 2.00),
      ],
    ),
    Food(
      name: "Jumbo Grilled River Prawns",
      description:
          "A close-up view of two massive, grilled river prawns or jumbo shrimp, split lengthwise to expose the white flesh and the rich orange head fat. They are served on a platter, possibly lined with a banana leaf. The focal point is a small, ornate blue-and-white bowl of vibrant green-yellow spicy seafood dipping sauce, packed with chopped fresh chilies, garlic, and herbs—a quintessential and extremely popular dipping sauce (tuk trey) used with seafood in Cambodia.",
      price: 28.99,
      rating: 4.8,
      imagePath: 'assets/images/seafood/sea5.jpg',
      category: FoodCategory.seafoods,
      availableAddons: [
        Addon(name: "Extra Dipping Sauce", price: 1.75),
        Addon(name: "Third Jumbo Prawn", price: 12.50),
        Addon(name: "Cucumber Salad", price: 3.25),
        Addon(name: "Steamed Vegetables", price: 4.00),
      ],
    ),
    Food(
      name: "Oysters Mornay",
      description:
          "This dish features six fresh oysters served on the half shell on a round platter, surrounded by lemon wedges. Each oyster is topped with a generous dollop of a creamy, yellow sauce, likely a Mornay (cheese-based) or a rich, savory Hollandaise/Sabayon sauce, and lightly broiled to give the top a slight golden crust. This is a common Western-style oyster preparation.",
      price: 19.75,
      rating: 4.3,
      imagePath: 'assets/images/seafood/sea6.jpg',
      category: FoodCategory.seafoods,
      availableAddons: [
        Addon(name: "Additional Oysters", price: 3.50),
        Addon(name: "Caviar Topping", price: 8.00),
        Addon(name: "Bacon Bits", price: 2.25),
        Addon(name: "Truffle Oil Drizzle", price: 4.50),
      ],
    ),
    Food(
      name: "Broiled Stuffed Lobster Tail",
      description:
          "A whole, large lobster is served on a white platter, split down the middle. The tail meat has been stuffed or topped with a breadcrumb, herb, and butter mixture, then broiled to a golden perfection, with melted butter and cheese drizzling over the meat. The presentation includes the cleaned claws and a side of a charred lemon, offering a visually stunning and rich preparation of lobster, typically found in high-end Western restaurants.",
      price: 42.50,
      rating: 4.9,
      imagePath: 'assets/images/seafood/sea7.jpg',
      category: FoodCategory.seafoods,
      availableAddons: [
        Addon(name: "Extra Drawn Butter", price: 2.50),
        Addon(name: "Garlic Mashed Potatoes", price: 4.75),
        Addon(name: "Truffle Mac & Cheese", price: 6.25),
        Addon(name: "Lobster Bisque", price: 8.50),
      ],
    ),
    Food(
      name: "King Crab with Dipping Sauces",
      description:
          "The centerpiece of this presentation is a large, vibrant orange King Crab, which has been cooked and is presented whole on a wooden board. Its spiky shell and long, jointed legs are clearly visible. The crab is the star, surrounded by a semi-circle of small white bowls, each containing a different variety of dipping sauces, ranging in color and texture from dark savory sauces to thick, yellow-orange creamy or buttery sauces, providing a range of flavors for the crab meat.",
      price: 65.00,
      rating: 4.8,
      imagePath: 'assets/images/seafood/sea8.jpg',
      category: FoodCategory.seafoods,
      availableAddons: [
        Addon(name: "Crab Cracking Tools", price: 3.00),
        Addon(name: "Extra Legs", price: 18.75),
        Addon(name: "Corn on the Cob", price: 3.50),
        Addon(name: "Andouille Sausage", price: 5.25),
      ],
    ),
    Food(
      name: "Stir-fried Blood Cockles",
      description:
          "A large, round metal platter is piled high with shiny, cooked blood cockles (Hoi Khleang in Khmer, or similar species of clam). The cockles are open and appear to be lightly steamed or stir-fried in a sauce, showing off their glossy, orange-brown flesh. They are served alongside a metal two-compartment dish filled with two different styles of spicy dipping sauce, both featuring visible chili flakes and herbs, essential for eating this popular Southeast Asian street food.",
      price: 14.25,
      rating: 4.2,
      imagePath: 'assets/images/seafood/sea9.jpg',
      category: FoodCategory.seafoods,
      availableAddons: [
        Addon(name: "Extra Spicy Dipping Sauce", price: 1.25),
        Addon(name: "Steamed Buns", price: 3.75),
        Addon(name: "Thai Basil", price: 1.50),
        Addon(name: "Coconut Water", price: 2.50),
      ],
    ),
    Food(
      name: "Grilled Squid Tentacles and Tubes",
      description:
          "Three pieces of whole squid (calamari) are laid out on a round wooden cutting board. The squid has been scored, which causes the tentacles and body to fan out into a flower shape as they cook. They have been grilled or roasted, resulting in a dark, caramelized char on the exterior. This simple, charred preparation is served with a small side dish of white dipping sauce, possibly a mayonnaise or creamy dipping sauce with sliced green chilies.",
      price: 15.99,
      rating: 4.3,
      imagePath: 'assets/images/seafood/sea10.jpg',
      category: FoodCategory.seafoods,
      availableAddons: [
        Addon(name: "Extra Squid", price: 6.50),
        Addon(name: "Garlic Aioli", price: 1.25),
        Addon(name: "Chili Lime Sauce", price: 1.00),
        Addon(name: "Seaweed Salad", price: 4.25),
      ],
    ),

    // Khmer sweet
    Food(
      name: "Slai Krob T'not",
      description:
          "This refreshing dessert is centered around slices of pale, translucent palm seed (slai kdong t'not), served immersed in a bowl of creamy, sweet coconut milk. The dessert is elegantly garnished with a white jasmine or similar flower, highlighting the floral notes often used in Khmer sweets. Two whole, yellowed palmyra fruit (skh t'not) halves are visible on the banana leaf background, emphasizing the main ingredient. This is a classic Khmer dessert.",
      price: 3.50,
      rating: 4.6,
      imagePath: 'assets/images/sweetkh/skh1.jpg',
      category: FoodCategory.khmerdeserts,
      availableAddons: [
        Addon(name: "Extra Coconut Milk", price: 0.75),
        Addon(name: "Palm Sugar Syrup", price: 0.50),
        Addon(name: "Crushed Ice", price: 0.25),
        Addon(name: "Toasted Sesame Seeds", price: 0.35),
      ],
    ),
    Food(
      name: "Babor Pout",
      description:
          "A clear bowl holds a layer of cooked split mung beans, which have a golden-yellow color and starchy, slightly mashed texture. The beans are heavily topped with a thick, glossy layer of white coconut cream (likely sweetened and salted), creating a visually appealing contrast between the yellow beans and the white cream. A pandan leaf garnish may indicate a subtle floral flavor.",
      price: 2.75,
      rating: 4.3,
      imagePath: 'assets/images/sweetkh/skh2.jpg',
      category: FoodCategory.khmerdeserts,
      availableAddons: [
        Addon(name: "Extra Coconut Cream", price: 0.65),
        Addon(name: "Palm Sugar Drizzle", price: 0.45),
        Addon(name: "Toasted Mung Beans", price: 0.55),
        Addon(name: "Fresh Pandan Leaf", price: 0.30),
      ],
    ),
    Food(
      name: "Babor Krob Sdao",
      description:
          "This vibrant dessert features small, cooked, translucent blue and dark blue sago or tapioca pearls (krob sdao) mixed with slices of white, chewy coconut jelly or agar-agar. The blue color is often achieved using the natural Butterfly Pea flower. The dish is swimming in a sweet coconut milk base and is generously topped with bright yellow Ginkgo biloba nuts, which add a buttery flavor and distinctive texture.",
      price: 4.25,
      rating: 4.7,
      imagePath: 'assets/images/sweetkh/skh3.jpg',
      category: FoodCategory.khmerdeserts,
      availableAddons: [
        Addon(name: "Extra Ginkgo Nuts", price: 1.25),
        Addon(name: "Coconut Jelly", price: 0.85),
        Addon(name: "Butterfly Pea Ice Cubes", price: 0.60),
        Addon(name: "Sweet Corn", price: 0.75),
      ],
    ),
    Food(
      name: "Num Jorm Jros Por",
      description:
          "An elaborate platter of various traditional golden sweets, often associated with royalty and ceremonies in the region. These sweets are primarily made from egg yolks, sugar, and sometimes coconut milk, and include: Thong Yip (pinched flowers), Foy Thong (golden threads), Med Kanoon (jackfruit seeds shape), and Thong Ek (small golden shapes), often grouped together in a rattan basket on a banana leaf for presentation.",
      price: 8.50,
      rating: 4.8,
      imagePath: 'assets/images/sweetkh/skh4.jpg',
      category: FoodCategory.khmerdeserts,
      availableAddons: [
        Addon(name: "Extra Thong Yip", price: 1.50),
        Addon(name: "Additional Foy Thong", price: 1.75),
        Addon(name: "Gold Leaf Decoration", price: 2.50),
        Addon(name: "Pandan Wrapping", price: 0.90),
      ],
    ),
    Food(
      name: "Jackfruit Dessert",
      description:
          "This dessert showcases bright yellow, fleshy lobes of jackfruit used as natural pockets to hold portions of sweet sticky rice that has been cooked in coconut milk. The sticky rice is visible at the center of each jackfruit piece and is topped with a sprinkle of toasted sesame seeds. This preparation is a very popular regional sweet, often seen in Cambodian and Thai cuisines.",
      price: 5.75,
      rating: 4.5,
      imagePath: 'assets/images/sweetkh/skh5.jpg',
      category: FoodCategory.khmerdeserts,
      availableAddons: [
        Addon(name: "Extra Jackfruit", price: 2.25),
        Addon(name: "Coconut Cream Drizzle", price: 0.85),
        Addon(name: "Black Sticky Rice", price: 1.50),
        Addon(name: "Toasted Coconut Flakes", price: 0.65),
      ],
    ),
    Food(
      name: "Lot With Coconut Milk",
      description:
          "A close-up of a glass filled with the popular sweet soup called Lot Chha (also known as Cendol or Chendol regionally). The dessert features bright, wriggly green noodles made from rice flour and pandan extract, which are served floating in a mixture of sweet coconut milk and often a sweetening agent like palm sugar syrup. Small, clear sago pearls are also visible among the green noodles, making for a very refreshing and common street dessert.",
      price: 3.25,
      rating: 4.4,
      imagePath: 'assets/images/sweetkh/skh6.jpg',
      category: FoodCategory.khmerdeserts,
      availableAddons: [
        Addon(name: "Extra Green Noodles", price: 0.75),
        Addon(name: "Palm Sugar Syrup", price: 0.55),
        Addon(name: "Red Beans", price: 0.85),
        Addon(name: "Sweet Corn", price: 0.60),
      ],
    ),
    Food(
      name: "Sticky Rice with Custard",
      description:
          "This dessert, labeled with the Khmer script (which actually translates to Green Sticky Rice or rice custard), shows a piece of pale-green, dense sweet sitting in a pool of white coconut cream. The green color is derived from pandan. This is most likely a preparation of sticky rice with pandan-coconut custard or a similar soft custard. It is topped with toasted sesame seeds and garnished with fresh pandan leaves.",
      price: 4.50,
      rating: 4.6,
      imagePath: 'assets/images/sweetkh/skh7.jpg',
      category: FoodCategory.khmerdeserts,
      availableAddons: [
        Addon(name: "Extra Coconut Custard", price: 1.25),
        Addon(name: "Mung Bean Filling", price: 0.95),
        Addon(name: "Pandan Extract", price: 0.45),
        Addon(name: "Toasted Mung Beans", price: 0.55),
      ],
    ),
    Food(
      name: "Fruit Dessert in Coconut Milk",
      description:
          "A bowl of cold, sweet coconut milk filled with an assortment of cubed jellies and fruit. The most prominent ingredient is large, translucent ruby-red jelly cubes (often water chestnut flour dyed red, similar to Tub Tim Grob). Other ingredients include white and pale yellow fruit or jelly cubes, and small, pinkish sago or tapioca pearls. This colorful combination is a refreshing and textural sweet soup, known generally as Nam Vahn (sweet water) or Chè in the region.",
      price: 4.00,
      rating: 4.5,
      imagePath: 'assets/images/sweetkh/skh8.jpg',
      category: FoodCategory.khmerdeserts,
      availableAddons: [
        Addon(name: "Extra Red Rubies", price: 1.15),
        Addon(name: "Lychee Fruit", price: 1.45),
        Addon(name: "Rainbow Jelly", price: 0.95),
        Addon(name: "Coconut Ice Cream", price: 1.75),
      ],
    ),
    Food(
      name: "Tuk Chha",
      description:
          "This dessert is a refreshing sweet soup or drink (known as Tuk Chha in Khmer or Chè in Vietnamese/regional cuisine) served cold over large ice cubes. The golden-brown liquid contains various ingredients, most notably large, dark red Chinese dates (jujubes), dried longan fruit, and sometimes translucent white slices of water chestnuts or fungus. It is a cooling and nourishing herbal sweet typically enjoyed in the summer heat.",
      price: 3.75,
      rating: 4.3,
      imagePath: 'assets/images/sweetkh/skh9.jpg',
      category: FoodCategory.khmerdeserts,
      availableAddons: [
        Addon(name: "Extra Chinese Dates", price: 1.05),
        Addon(name: "Dried Longan", price: 0.90),
        Addon(name: "Lotus Seeds", price: 1.25),
        Addon(name: "Rock Sugar", price: 0.40),
      ],
    ),
    Food(
      name: "Mung Bean Dessert",
      description:
          "This is a thick and hearty dessert composed of cooked whole mung beans (num bot kjol) submerged in a creamy, white coconut milk sauce. The texture is characterized by the soft, slightly chewy consistency of the cooked beans blended with the rich, sweet coconut milk. A spoon is shown lifting a portion, showcasing the high ratio of beans to liquid.",
      price: 3.25,
      rating: 4.2,
      imagePath: 'assets/images/sweetkh/skh10.jpg',
      category: FoodCategory.khmerdeserts,
      availableAddons: [
        Addon(name: "Extra Coconut Sauce", price: 0.70),
        Addon(name: "Palm Sugar", price: 0.50),
        Addon(name: "Toasted Coconut", price: 0.65),
        Addon(name: "Tapioca Pearls", price: 0.80),
      ],
    ),
  ];

  // User Cart
  final List<CartItem> _cart = [];

  // delivery address (which usercan change/update)
  String _deliveryAddress = "Phnom Penh";

  // G E T T E R S
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  // O P E R A T I O N S

  // Add this to your Restaurant class
  final List<FavoriteItem> _favorites = [];

  List<FavoriteItem> get favorites => _favorites;

  // add to Favorite
  void addToFavorite(Food food) {
    // Check if food is already in favorites
    bool alreadyFavorite = _favorites.any((fav) => fav.food == food);

    if (!alreadyFavorite) {
      _favorites.add(FavoriteItem(food: food));
      notifyListeners();
    }
  }

  void removeFromFavorite(Food food) {
    _favorites.removeWhere((fav) => fav.food == food);
    notifyListeners();
  }

  bool isFoodFavorite(Food food) {
    return _favorites.any((fav) => fav.food == food);
  }

  // 1. add to cart
  void addToCart(Food food, List<Addon> selectedAddons) {
    // Use a block function for clarity and local variable definition
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // check if the food items are the same
      final bool isSameFood = item.food == food;

      // check if the list of selected addons are the same
      final bool isSameAddons = ListEquality().equals(
        item.selectedAddons,
        selectedAddons,
      );

      // Return the combined condition
      return isSameFood && isSameAddons;
    });

    // if item already exists, increase its quantity
    if (cartItem != null) {
      cartItem.quantity++;
    }
    // otherwise, add a new cart item to cart
    else {
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  // 2. remove from cart
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  // 3. get total price of cart
  double getTotalPrice() {
    double total = 0.0;
    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;
      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // 4. get total number of items in cart
  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  // 5. clear cart
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  // 6. update delevery address
  void updateDeleveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  // H E L P E R S
  // 1. generate a receipt
  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    // format the date to include up to seconds only
    String formattedDate = DateFormat(
      'yyyy-MM-dd HH:mm:ss',
    ).format(DateTime.now());
    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("___________");

    for (final cartItem in _cart) {
      receipt.writeln(
        "${cartItem.quantity} * ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}",
      );
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt.writeln(
          "  Add-ons : ${_formatAddons(cartItem.selectedAddons)}",
        );
      }
      receipt.writeln();
    }
    receipt.writeln("___________");
    receipt.writeln();
    receipt.writeln("Total Items : ${getTotalItemCount()}");
    receipt.writeln("Total Price : ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivery to : $deliveryAddress");

    return receipt.toString();
  }

  // 2. format double value into money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  // 3. format list of addons into a string summary
  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addons) => "${addons.name} (${_formatPrice(addons.price)})")
        .join(", ");
  }
}
