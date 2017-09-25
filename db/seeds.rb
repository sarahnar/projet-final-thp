# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   
#   restaurant = Restaurant.new 
Restaurant.destroy_all

Restaurant.create!([{
    id: 1, 
    name: "chez momo", 
    logo: "chez momo", 
    city: "petite anse", 
    zipcode: "97217", 
    address: "rue des pecheurs", 
    phone: "0696969696", 
    place: 15, 
    created_at: nil, 
    updated_at: nil, 
    user_id: 4,
    menu: 'https://image.jimcdn.com/app/cms/image/transf/dimension=1920x400:format=jpg/path/sf22b4a5de760867f/image/idad1ec945cbc75a9/version/1474545257/image.jpg'
  },
  {
    id: 2, 
    name: "chez Rico", 
    logo: "chez Rico", 
    city: "grande anse", 
    zipcode: "97217", 
    address: "rue des pecheurs", 
    phone: "0696969696", 
    place: 15, 
    created_at: nil, 
    updated_at: nil, 
    user_id: 6,
    menu: 'https://image.jimcdn.com/app/cms/image/transf/dimension=1920x400:format=jpg/path/sf22b4a5de760867f/image/idad1ec945cbc75a9/version/1474545257/image.jpg'
  },
  {
    id: 3, 
    name: "Kaban Ylan", 
    logo: "Kaban Ylan", 
    city: "Bourg anse d'arlet", 
    zipcode: "97217", 
    address: "coin des pères", 
    phone: "0696969696", 
    place: 15, 
    created_at: nil, 
    updated_at: nil, 
    user_id: 1,
    menu: 'https://image.jimcdn.com/app/cms/image/transf/dimension=1920x400:format=jpg/path/sf22b4a5de760867f/image/idad1ec945cbc75a9/version/1474545257/image.jpg'
  }])

Carousel.destroy_all
Carousel.create!([{
  id: 1,
  image: '/assets/image.jpg',
  title: 'Kaban Ylan',
  baseline: 'Venez déguster notre salade de la mer !',
  offset: '',
  color: '#444',
  restaurant_id: 3 #kaban ylan
},{
  id: 2,
  image: '/assets/image.jpg',
  title: '',
  baseline: '',
  offset: '',
  restaurant_id: 3 #kaban ylan
},{
  id: 3,
  image: '/assets/image.jpg',
  title: '',
  baseline: '',
  offset: '',
  restaurant_id: 3 #kaban ylan
},{
  id: 4,
  image: '/assets/terasse.JPG',
  title: 'Chez Rico',
  baseline: 'Venez profiter!',
  offset: -255,
  color: '#444',
  restaurant_id: 2 #chez rico
},{
  id: 5,
  image: '/assets/terasse.JPG',
  title: '',
  baseline: '',
  offset: -255,
  restaurant_id: 2 #chez rico
},{
  id: 6,
  image: '/assets/terasse.JPG',
  title: '',
  baseline: '',
  offset: -255,
  restaurant_id: 2 #chez rico
}])

Opening.destroy_all
Opening.create!([{
  id: 1,
  open_at: 11,
  close_at: 20,
  restaurant_id: 1
},{
  id: 2,
  open_at: 11,
  close_at: 20,
  restaurant_id: 2
},{
  id: 3,
  open_at: 11,
  close_at: 16,
  restaurant_id: 3 #kaban ylan
},{
  id: 4,
  open_at: 19,
  close_at: 22,
  restaurant_id: 3 #kaban ylan
}])