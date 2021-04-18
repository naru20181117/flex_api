enum KEY_WORDS { Vacation, Mountain, Cafe, Sunset, Animal, Fish, Zebra }

extension KeyWordExtension on KEY_WORDS {
  static final values = {
    KEY_WORDS.Vacation: "Vacation",
    KEY_WORDS.Mountain: "Mountain",
    KEY_WORDS.Cafe: "Cafe",
    KEY_WORDS.Sunset: "Sunset",
    KEY_WORDS.Animal: "Animal",
    KEY_WORDS.Fish: "Fish",
    KEY_WORDS.Zebra: "Zebra"
  };
  String get value => values[this];
}
