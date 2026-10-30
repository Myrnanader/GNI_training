import '../core/constants/app_assets.dart';
import '../models/shoe_model.dart';

const _desc =
    'Air Jordan is an American brand of basketball shoes athletic, casual, and style clothing produced by Nike....';

const _gallery = [
  AppAssets.shoeBlue,
  AppAssets.shoeRed,
  AppAssets.shoeWhiteBlue,
];

const popularShoes = [
  ShoeModel(
    name: 'Nike Jordan',
    price: '\$493.00',
    tag: 'BEST SELLER',
    image: AppAssets.shoeRed,
    description: _desc,
    gallery: _gallery,
  ),
  ShoeModel(
    name: 'Nike Air Max',
    price: '\$897.99',
    tag: 'BEST SELLER',
    image: AppAssets.shoeBlue,
    description: _desc,
    gallery: _gallery,
  ),
];

const newArrival = ShoeModel(
  name: 'Nike Air Jordan',
  price: '\$849.69',
  tag: 'BEST CHOICE',
  image: AppAssets.shoeWhiteBlue,
  description: _desc,
  gallery: _gallery,
);