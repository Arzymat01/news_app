class Country {
  const Country(this.name, this.domain);

  final String name;
  final String domain;
}

const Country unitedArabEmirates =
    Country('Объединенные Арабские Эмират', 'ae');
const Country switzerland = Country('Швейцария', 'ch');
const Country russia = Country('Россия', 'ru');
const Country indonesia = Country('Индонезия', 'id');
const Country india = Country(' Индия', 'in');
const Country usa = Country('США', 'us');
const Country korea = Country(' Корея', 'kr');
const Country turkey = Country('Турция', 'tr');
const Country ukraina = Country('Украина', 'ua');
const Country australia = Country('Австралия', 'au');
const Country france = Country('Франция', 'fr');
const Country greatbritain = Country('Англия', 'gb');
const Country newZealand = Country('Новая Зеландия', 'nz');
const Country taiwan = Country('Тайвань', 'tw');

const Set<Country> countrySet = {
  unitedArabEmirates,
  switzerland,
  russia,
  indonesia,
  india,
  usa,
  korea,
  turkey,
  ukraina,
  australia,
  france,
  greatbritain,
  newZealand,
  taiwan,
};

const List<Country> countryList = [
  unitedArabEmirates,
  switzerland,
  russia,
  indonesia,
  india,
  usa,
  korea,
  turkey,
  ukraina,
  australia,
  france,
  greatbritain,
  newZealand,
  taiwan,
];
