
class Product {
  final String image, title, storage, description, moredetail, category, price;
  final int id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.storage,
    required this.moredetail,
    required this.category,
  });
}

var controllerlist = [
  Product(
      id: 1,
      title: "Midnight Black",
      price: "87.90",
      storage: "Playstation 5",
      description: "Ignite your PS5 gaming nights with this sleek controller featuring two subtly different shades of black.",
      image: "assets/images/controller_7.png",
      moredetail: "For",
      category: "Controller for Playstation"
  ),
  Product(
      id: 2,
      title: "Cosmic Red",
      price: "87.90",
      storage: "Playstation 5",
      description: "Explore new gaming frontiers with a vivid red design, complete with matching button details.",
      image: "assets/images/controller_8.png",
      moredetail: "For",
      category: "Controller for Playstation"
  ),
  Product(
      id: 3,
      title: "DualSense Controller",
      price: "67.90",
      storage: "Playstation 5",
      description: "Bring player two into your games with the original two-tone DualSense wireless controller design.",
      image: "assets/images/controller_9.png",
      moredetail: "For",
      category: "Controller for Playstation"
  ),
  Product(
      id: 4,
      title: "The Last of Us Part II Limited Edition",
      price: "64.99",
      storage: "Playstation 4",
      description: "Start your journey with the limited edition controller featuring Ellie’s fern tattoo.",
      image: "assets/images/controller_0.png",
      moredetail: "For",
      category: "Controller for Playstation"
  ),
  Product(
      id: 1,
      title: "Gold",
      price: "64.99",
      storage: "Playstation 4",
      description: "Take the top spot and compete in style when you go for Gold.",
      image: "assets/images/controller_1.png",
      moredetail: "For",
      category: "Controller for Playstation"
      ),
  Product(
      id: 2,
      title: "Red Camouflage",
      price: "64.99",
      storage: "Playstation 4",
      description: "Make a bold statement with striking Red Camouflage.",
      image: "assets/images/controller_2.png",
      moredetail: "For",
      category: "Controller for Playstation"
      ),
  Product(
      id: 3,
      title: "Rose Gold",
      price: "64.99",
      storage: "Playstation 4",
      description: "Add sleek sophistication to your set-up with metallic Rose Gold.",
      image: "assets/images/controller_3.png",
      moredetail: "For",
      category: "Controller for Playstation"
      ),
  Product(
      id: 4,
      title: "Steel Black",
      price: "64.99",
      storage: "Playstation 4",
      description: "Forge victory in the heart of battle with metallic Steel Black.",
      image: "assets/images/controller_4.png",
      moredetail: "For",
      category: "Controller for Playstation"
      ),
  Product(
      id: 5,
      title: "Berry Blue",
      price: "64.99",
      storage: "Playstation 4",
      description: "Add a burst of color to your games with Berry Blue, featuring purple sticks, triggers and buttons.",
      image: "assets/images/controller_5.png",
      moredetail: "For",
      category: "Controller for Playstation"
      ),
  Product(
    id: 6,
    title: "Glacier White",
    price: "64.99",
    storage: "Playstation 4",
    description: "Stay cool in the heat of battle with Glacier White.",
    image: "assets/images/controller_6.png",
    moredetail: "For",
    category: "Controller for Playstation"
  ),
];

var consolelist = [
  Product(
      id: 1,
      title: "PlayStation®5 Digital Edition",
      price: "399.99",
      storage: "825 GB",
      description: "Immerse yourself in incredible virtual reality games and experiences. Put yourself at the center of an extraordinary gaming universe with PS VR exclusive games, all powered by your PlayStation® console.",
      image: "assets/images/playstation_5_DE.png",
      moredetail: "Storage",
      category: "Game Console"
  ),
  Product(
      id: 2,
      title: "PlayStation®5",
      price: "499.99",
      storage: "825 GB",
      description: "Experience lightning-fast loading with an ultra-high-speed SSD, deeper immersion with support for haptic feedback, adaptive triggers and 3D Audio1, and an all-new generation of incredible PlayStation games.",
      image: "assets/images/playstation_0.png",
      moredetail: "Storage",
      category: "Game Console"
  ),
  Product(
    id: 3,
    title: "PlayStation®4",
    price: "299.00",
    storage: "1 TB",
    description: "The 1TB hard drive PlayStation®4 system lets you play the greatest games from acclaimed indies to award-winning AAA hits, along with more entertainment options from TV, music and more.",
    image: "assets/images/playstation_1.png",
    moredetail: "Storage",
    category: "Game Console"
  ),
  Product(
    id: 4,
    title: "PlayStation®4 Pro",
    price: "400.00",
    storage: "1 TB",
    description: "Play the latest PS4 blockbuster games and PlayStation exclusives in stunning 4K from the PS4 Pro console on your 4K TV, and stream your favourite entertainment with incredible visual detail from 4K compatible services.",
    image: "assets/images/playstation_2.png",
    moredetail: "Storage",
    category: "Game Console"
  ),
  Product(
    id: 5,
    title: "PlayStation® VR",
    price: "299.00",
    storage: "Playstation 4",
    description: "Immerse yourself in incredible virtual reality games and experiences. Put yourself at the center of an extraordinary gaming universe with PS VR exclusive games, all powered by your PlayStation® console.",
    image: "assets/images/playstation_3.png",
    moredetail: "Platform",
    category: "Game Console"
  ),
];

var gameslist = [
  Product(
      id: 1,
      title: "Resident Evil Village",
      price: "59.86",
      storage: "PS4 & PS5",
      description: "This product entitles you to download both the digital PS4™ version and the digital PS5™ version of this game.\nExperience survival horror like never before in the eighth major installment in the storied Resident Evil franchise - Resident Evil Village.",
      image: "assets/images/games_01.jpg",
      moredetail: "Available for",
      category: "Games"
  ),
  Product(
      id: 2,
      title: "Ryu Ga Gotoku 7: Hikari To Yami No Yukue",
      price: "37.32",
      storage: "PS5",
      description: "Follow the exploits of new series protagonist Ichiban Kasuga and his allies as a brand-new adventure begins in the town of Ijincho, Yokohama.",
      image: "assets/images/games_02.jpg",
      moredetail: "Available for",
      category: "Games"
  ),
  Product(
      id: 3,
      title: "Marvel's Spider-Man: Miles Morales",
      price: "40.96",
      storage: "PS4 & PS5",
      description: "In the latest adventure in the Marvel’s Spider-Man universe, teenager Miles Morales is adjusting to his new home while following in the footsteps of his mentor, Peter Parker, as a new Spider-Man.",
      image: "assets/images/games_03.jpg",
      moredetail: "Available for",
      category: "Games"
  ),
  Product(
      id: 4,
      title: "SEKIRO: SHADOWS DIE TWICE",
      price: "23.26",
      storage: "PS4",
      description: "Carve your own clever path to vengeance in an all-new adventure from developer FromSoftware, creators of the Dark Souls series. In Sekiro: Shadows Die Twice you are the “one-armed wolf”, a disgraced and disfigured warrior rescued from the brink of death.",
      image: "assets/images/games_04.jpg",
      moredetail: "Available for",
      category: "Games"
  ),
  Product(
      id: 5,
      title: "NBA 2K21 Next Generation",
      price: "31.75",
      storage: "PS5",
      description: "NBA 2K21 is the latest release in the world-renowned, best-selling NBA 2K series. 2K21 leads the charge with next-gen innovations, while continuing to deliver an industry-leading sports video game experience on the current generation of gaming platforms.",
      image: "assets/images/games_05.jpg",
      moredetail: "Available for",
      category: "Games"
  ),
  Product(
      id: 6,
      title: "Ghost of Tsushima",
      price: "23.26",
      storage: "PS4",
      description: "It’s the late 13th century, and the Mongol empire has laid waste to entire nations in its campaign to conquer the East. Tsushima Island is all that stands between mainland Japan and a massive Mongol invasion. As the island burns in the wake of the first wave of the Mongol assault, samurai warrior Jin Sakai resolves to do whatever it takes to protect his people and reclaim his home.",
      image: "assets/images/games_06.jpg",
      moredetail: "Available for",
      category: "Games"
  ),
  Product(
      id: 7,
      title: "The Last of Us™ Part II",
      price: "29.04",
      storage: "PS4",
      description: "Five years after their dangerous journey across the post-pandemic United States, Ellie and Joel have settled down in Jackson, Wyoming. Living amongst a thriving community of survivors has allowed them peace and stability, despite the constant threat of the infected and other, more desperate survivors.",
      image: "assets/images/games_07.jpg",
      moredetail: "Available for",
      category: "Games"
  ),
  Product(
      id: 8,
      title: "Assassin's Creed Valhalla",
      price: "43.25",
      storage: "PS4 & PS5",
      description: "Become Eivor, a legendary Viking raider on a quest for glory. Explore England's Dark Ages as you raid your enemies, grow your settlement, and build your political power.",
      image: "assets/images/games_08.jpg",
      moredetail: "Available for",
      category: "Games"
  ),
];

var accessorieslist = [
  Product(
      id: 1,
      title: "DualSense™ charging station",
      price: "42.15",
      storage: "Playstation 5",
      description: "Charge up to two DualSense wireless controllers simultaneously without having to connect them to your PlayStation 5 console.",
      image: "assets/images/accessories_1.png",
      moredetail: "For",
      category: "Accessories PS5"
  ),
  Product(
      id: 2,
      title: "PULSE 3D™ wireless headset",
      price: "99.00",
      storage: "Playstation 5",
      description: "Play in comfort with a wireless headset fine-tuned for 3D Audio on PS5 consoles2. Featuring USB Type-C®  charging and dual noise-cancelling microphones, you can keep the party chat flowing with crystal-clear voice capture3.",
      image: "assets/images/accessories_2.png",
      moredetail: "For",
      category: "Accessories PS5"
  ),
  Product(
      id: 3,
      title: "Media remote",
      price: "29.99",
      storage: "Playstation 5",
      description: "Conveniently control movies, streaming services4 and more on your PS5 console with an intuitive layout.",
      image: "assets/images/accessories_3.png",
      moredetail: "For",
      category: "Accessories PS5"
  ),
  Product(
      id: 6,
      title: "HD camera",
      price: "49.99",
      storage: "Playstation 5",
      description: "Add yourself to your gameplay videos and broadcasts3 with smooth, sharp, full-HD capture.",
      image: "assets/images/accessories_4.png",
      moredetail: "For",
      category: "Accessories PS5"
  ),
  Product(
      id: 5,
      title: "Wireless Headset",
      price: "99.00",
      storage: "Playstation 4",
      description: "Experience the gold standard in gaming audio with the redesigned Wireless Headset – now with refined comfort and hidden dual mics for enhanced in-game communication.",
      image: "assets/images/accessories_5.png",
      moredetail: "For",
      category: "Accessories PS4"
  ),
  Product(
      id: 6,
      title: "PlayStation Camera",
      price: "190.00",
      storage: "Playstation 4",
      description: "PlayStation Camera is your key to unlocking amazing new gameplay experiences in PlayStation VR – not to mention a variety of extra PS4 features.",
      image: "assets/images/accessories_6.png",
      moredetail: "For",
      category: "Accessories PS4"
  ),
  Product(
      id: 7,
      title: "DUALSHOCK 4 Charging Station",
      price: "61.99",
      storage: "Playstation 4",
      description: "Make sure the power is in your hands with this official charging station – it can power up to two DUALSHOCK 4 wireless controllers at the same time.",
      image: "assets/images/accessories_7.png",
      moredetail: "For",
      category: "Accessories PS4"
  ),
  Product(
      id: 8,
      title: "PS4 Vertical stand",
      price: "11.99",
      storage: "Playstation 4",
      description: "Display your PS4 the way you want to and save space around your TV.",
      image: "assets/images/accessories_8.png",
      moredetail: "For",
      category: "Accessories PS4"
  ),
];

