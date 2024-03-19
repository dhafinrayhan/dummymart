part of 'mocked_api_client.dart';

typedef _ResponseData = Map<String, Object?>;

class _MockedApiClientRepository {
  _MockedApiClientRepository._();

  static List<Product> getProducts() {
    final dynamic json = {
      "products": [
        {
          "id": 1,
          "title": "iPhone 9",
          "description": "An apple mobile which is nothing like apple",
          "price": 549,
          "discountPercentage": 12.96,
          "rating": 4.69,
          "stock": 94,
          "brand": "Apple",
          "category": "smartphones",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/1/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/1/1.jpg",
            "https://cdn.dummyjson.com/product-images/1/2.jpg",
            "https://cdn.dummyjson.com/product-images/1/3.jpg",
            "https://cdn.dummyjson.com/product-images/1/4.jpg",
            "https://cdn.dummyjson.com/product-images/1/thumbnail.jpg"
          ]
        },
        {
          "id": 2,
          "title": "iPhone X",
          "description":
              "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...",
          "price": 899,
          "discountPercentage": 17.94,
          "rating": 4.44,
          "stock": 34,
          "brand": "Apple",
          "category": "smartphones",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/2/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/2/1.jpg",
            "https://cdn.dummyjson.com/product-images/2/2.jpg",
            "https://cdn.dummyjson.com/product-images/2/3.jpg",
            "https://cdn.dummyjson.com/product-images/2/thumbnail.jpg"
          ]
        },
        {
          "id": 3,
          "title": "Samsung Universe 9",
          "description":
              "Samsung's new variant which goes beyond Galaxy to the Universe",
          "price": 1249,
          "discountPercentage": 15.46,
          "rating": 4.09,
          "stock": 36,
          "brand": "Samsung",
          "category": "smartphones",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/3/thumbnail.jpg",
          "images": ["https://cdn.dummyjson.com/product-images/3/1.jpg"]
        },
        {
          "id": 4,
          "title": "OPPOF19",
          "description": "OPPO F19 is officially announced on April 2021.",
          "price": 280,
          "discountPercentage": 17.91,
          "rating": 4.3,
          "stock": 123,
          "brand": "OPPO",
          "category": "smartphones",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/4/1.jpg",
            "https://cdn.dummyjson.com/product-images/4/2.jpg",
            "https://cdn.dummyjson.com/product-images/4/3.jpg",
            "https://cdn.dummyjson.com/product-images/4/4.jpg",
            "https://cdn.dummyjson.com/product-images/4/thumbnail.jpg"
          ]
        },
        {
          "id": 5,
          "title": "Huawei P30",
          "description":
              "Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.",
          "price": 499,
          "discountPercentage": 10.58,
          "rating": 4.09,
          "stock": 32,
          "brand": "Huawei",
          "category": "smartphones",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/5/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/5/1.jpg",
            "https://cdn.dummyjson.com/product-images/5/2.jpg",
            "https://cdn.dummyjson.com/product-images/5/3.jpg"
          ]
        },
        {
          "id": 6,
          "title": "MacBook Pro",
          "description":
              "MacBook Pro 2021 with mini-LED display may launch between September, November",
          "price": 1749,
          "discountPercentage": 11.02,
          "rating": 4.57,
          "stock": 83,
          "brand": "Apple",
          "category": "laptops",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/6/thumbnail.png",
          "images": [
            "https://cdn.dummyjson.com/product-images/6/1.png",
            "https://cdn.dummyjson.com/product-images/6/2.jpg",
            "https://cdn.dummyjson.com/product-images/6/3.png",
            "https://cdn.dummyjson.com/product-images/6/4.jpg"
          ]
        },
        {
          "id": 7,
          "title": "Samsung Galaxy Book",
          "description":
              "Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched",
          "price": 1499,
          "discountPercentage": 4.15,
          "rating": 4.25,
          "stock": 50,
          "brand": "Samsung",
          "category": "laptops",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/7/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/7/1.jpg",
            "https://cdn.dummyjson.com/product-images/7/2.jpg",
            "https://cdn.dummyjson.com/product-images/7/3.jpg",
            "https://cdn.dummyjson.com/product-images/7/thumbnail.jpg"
          ]
        },
        {
          "id": 8,
          "title": "Microsoft Surface Laptop 4",
          "description":
              "Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.",
          "price": 1499,
          "discountPercentage": 10.23,
          "rating": 4.43,
          "stock": 68,
          "brand": "Microsoft Surface",
          "category": "laptops",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/8/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/8/1.jpg",
            "https://cdn.dummyjson.com/product-images/8/2.jpg",
            "https://cdn.dummyjson.com/product-images/8/3.jpg",
            "https://cdn.dummyjson.com/product-images/8/4.jpg",
            "https://cdn.dummyjson.com/product-images/8/thumbnail.jpg"
          ]
        },
        {
          "id": 9,
          "title": "Infinix INBOOK",
          "description":
              "Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey – 1 Year Warranty",
          "price": 1099,
          "discountPercentage": 11.83,
          "rating": 4.54,
          "stock": 96,
          "brand": "Infinix",
          "category": "laptops",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/9/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/9/1.jpg",
            "https://cdn.dummyjson.com/product-images/9/2.png",
            "https://cdn.dummyjson.com/product-images/9/3.png",
            "https://cdn.dummyjson.com/product-images/9/4.jpg",
            "https://cdn.dummyjson.com/product-images/9/thumbnail.jpg"
          ]
        },
        {
          "id": 10,
          "title": "HP Pavilion 15-DK1056WM",
          "description":
              "HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10",
          "price": 1099,
          "discountPercentage": 6.18,
          "rating": 4.43,
          "stock": 89,
          "brand": "HP Pavilion",
          "category": "laptops",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/10/thumbnail.jpeg",
          "images": [
            "https://cdn.dummyjson.com/product-images/10/1.jpg",
            "https://cdn.dummyjson.com/product-images/10/2.jpg",
            "https://cdn.dummyjson.com/product-images/10/3.jpg",
            "https://cdn.dummyjson.com/product-images/10/thumbnail.jpeg"
          ]
        },
        {
          "id": 11,
          "title": "perfume Oil",
          "description":
              "Mega Discount, Impression of Acqua Di Gio by GiorgioArmani concentrated attar perfume Oil",
          "price": 13,
          "discountPercentage": 8.4,
          "rating": 4.26,
          "stock": 65,
          "brand": "Impression of Acqua Di Gio",
          "category": "fragrances",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/11/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/11/1.jpg",
            "https://cdn.dummyjson.com/product-images/11/2.jpg",
            "https://cdn.dummyjson.com/product-images/11/3.jpg",
            "https://cdn.dummyjson.com/product-images/11/thumbnail.jpg"
          ]
        },
        {
          "id": 12,
          "title": "Brown Perfume",
          "description":
              "Royal_Mirage Sport Brown Perfume for Men & Women - 120ml",
          "price": 40,
          "discountPercentage": 15.66,
          "rating": 4,
          "stock": 52,
          "brand": "Royal_Mirage",
          "category": "fragrances",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/12/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/12/1.jpg",
            "https://cdn.dummyjson.com/product-images/12/2.jpg",
            "https://cdn.dummyjson.com/product-images/12/3.png",
            "https://cdn.dummyjson.com/product-images/12/4.jpg",
            "https://cdn.dummyjson.com/product-images/12/thumbnail.jpg"
          ]
        },
        {
          "id": 13,
          "title": "Fog Scent Xpressio Perfume",
          "description":
              "Product details of Best Fog Scent Xpressio Perfume 100ml For Men cool long lasting perfumes for Men",
          "price": 13,
          "discountPercentage": 8.14,
          "rating": 4.59,
          "stock": 61,
          "brand": "Fog Scent Xpressio",
          "category": "fragrances",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/13/thumbnail.webp",
          "images": [
            "https://cdn.dummyjson.com/product-images/13/1.jpg",
            "https://cdn.dummyjson.com/product-images/13/2.png",
            "https://cdn.dummyjson.com/product-images/13/3.jpg",
            "https://cdn.dummyjson.com/product-images/13/4.jpg",
            "https://cdn.dummyjson.com/product-images/13/thumbnail.webp"
          ]
        },
        {
          "id": 14,
          "title": "Non-Alcoholic Concentrated Perfume Oil",
          "description":
              "Original Al Munakh® by Mahal Al Musk | Our Impression of Climate | 6ml Non-Alcoholic Concentrated Perfume Oil",
          "price": 120,
          "discountPercentage": 15.6,
          "rating": 4.21,
          "stock": 114,
          "brand": "Al Munakh",
          "category": "fragrances",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/14/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/14/1.jpg",
            "https://cdn.dummyjson.com/product-images/14/2.jpg",
            "https://cdn.dummyjson.com/product-images/14/3.jpg",
            "https://cdn.dummyjson.com/product-images/14/thumbnail.jpg"
          ]
        },
        {
          "id": 15,
          "title": "Eau De Perfume Spray",
          "description":
              "Genuine  Al-Rehab spray perfume from UAE/Saudi Arabia/Yemen High Quality",
          "price": 30,
          "discountPercentage": 10.99,
          "rating": 4.7,
          "stock": 105,
          "brand": "Lord - Al-Rehab",
          "category": "fragrances",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/15/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/15/1.jpg",
            "https://cdn.dummyjson.com/product-images/15/2.jpg",
            "https://cdn.dummyjson.com/product-images/15/3.jpg",
            "https://cdn.dummyjson.com/product-images/15/4.jpg",
            "https://cdn.dummyjson.com/product-images/15/thumbnail.jpg"
          ]
        },
        {
          "id": 16,
          "title": "Hyaluronic Acid Serum",
          "description":
              "L'OrÃ©al Paris introduces Hyaluron Expert Replumping Serum formulated with 1.5% Hyaluronic Acid",
          "price": 19,
          "discountPercentage": 13.31,
          "rating": 4.83,
          "stock": 110,
          "brand": "L'Oreal Paris",
          "category": "skincare",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/16/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/16/1.png",
            "https://cdn.dummyjson.com/product-images/16/2.webp",
            "https://cdn.dummyjson.com/product-images/16/3.jpg",
            "https://cdn.dummyjson.com/product-images/16/4.jpg",
            "https://cdn.dummyjson.com/product-images/16/thumbnail.jpg"
          ]
        },
        {
          "id": 17,
          "title": "Tree Oil 30ml",
          "description":
              "Tea tree oil contains a number of compounds, including terpinen-4-ol, that have been shown to kill certain bacteria,",
          "price": 12,
          "discountPercentage": 4.09,
          "rating": 4.52,
          "stock": 78,
          "brand": "Hemani Tea",
          "category": "skincare",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/17/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/17/1.jpg",
            "https://cdn.dummyjson.com/product-images/17/2.jpg",
            "https://cdn.dummyjson.com/product-images/17/3.jpg",
            "https://cdn.dummyjson.com/product-images/17/thumbnail.jpg"
          ]
        },
        {
          "id": 18,
          "title": "Oil Free Moisturizer 100ml",
          "description":
              "Dermive Oil Free Moisturizer with SPF 20 is specifically formulated with ceramides, hyaluronic acid & sunscreen.",
          "price": 40,
          "discountPercentage": 13.1,
          "rating": 4.56,
          "stock": 88,
          "brand": "Dermive",
          "category": "skincare",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/18/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/18/1.jpg",
            "https://cdn.dummyjson.com/product-images/18/2.jpg",
            "https://cdn.dummyjson.com/product-images/18/3.jpg",
            "https://cdn.dummyjson.com/product-images/18/4.jpg",
            "https://cdn.dummyjson.com/product-images/18/thumbnail.jpg"
          ]
        },
        {
          "id": 19,
          "title": "Skin Beauty Serum.",
          "description":
              "Product name: rorec collagen hyaluronic acid white face serum riceNet weight: 15 m",
          "price": 46,
          "discountPercentage": 10.68,
          "rating": 4.42,
          "stock": 54,
          "brand": "ROREC White Rice",
          "category": "skincare",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/19/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/19/1.jpg",
            "https://cdn.dummyjson.com/product-images/19/2.jpg",
            "https://cdn.dummyjson.com/product-images/19/3.png",
            "https://cdn.dummyjson.com/product-images/19/thumbnail.jpg"
          ]
        },
        {
          "id": 20,
          "title": "Freckle Treatment Cream- 15gm",
          "description":
              "Fair & Clear is Pakistan's only pure Freckle cream which helpsfade Freckles, Darkspots and pigments. Mercury level is 0%, so there are no side effects.",
          "price": 70,
          "discountPercentage": 16.99,
          "rating": 4.06,
          "stock": 140,
          "brand": "Fair & Clear",
          "category": "skincare",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/20/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/20/1.jpg",
            "https://cdn.dummyjson.com/product-images/20/2.jpg",
            "https://cdn.dummyjson.com/product-images/20/3.jpg",
            "https://cdn.dummyjson.com/product-images/20/4.jpg",
            "https://cdn.dummyjson.com/product-images/20/thumbnail.jpg"
          ]
        },
        {
          "id": 21,
          "title": "- Daal Masoor 500 grams",
          "description":
              "Fine quality Branded Product Keep in a cool and dry place",
          "price": 20,
          "discountPercentage": 4.81,
          "rating": 4.44,
          "stock": 133,
          "brand": "Saaf & Khaas",
          "category": "groceries",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/21/thumbnail.png",
          "images": [
            "https://cdn.dummyjson.com/product-images/21/1.png",
            "https://cdn.dummyjson.com/product-images/21/2.jpg",
            "https://cdn.dummyjson.com/product-images/21/3.jpg"
          ]
        },
        {
          "id": 22,
          "title": "Elbow Macaroni - 400 gm",
          "description":
              "Product details of Bake Parlor Big Elbow Macaroni - 400 gm",
          "price": 14,
          "discountPercentage": 15.58,
          "rating": 4.57,
          "stock": 146,
          "brand": "Bake Parlor Big",
          "category": "groceries",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/22/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/22/1.jpg",
            "https://cdn.dummyjson.com/product-images/22/2.jpg",
            "https://cdn.dummyjson.com/product-images/22/3.jpg"
          ]
        },
        {
          "id": 23,
          "title": "Orange Essence Food Flavou",
          "description":
              "Specifications of Orange Essence Food Flavour For Cakes and Baking Food Item",
          "price": 14,
          "discountPercentage": 8.04,
          "rating": 4.85,
          "stock": 26,
          "brand": "Baking Food Items",
          "category": "groceries",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/23/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/23/1.jpg",
            "https://cdn.dummyjson.com/product-images/23/2.jpg",
            "https://cdn.dummyjson.com/product-images/23/3.jpg",
            "https://cdn.dummyjson.com/product-images/23/4.jpg",
            "https://cdn.dummyjson.com/product-images/23/thumbnail.jpg"
          ]
        },
        {
          "id": 24,
          "title": "cereals muesli fruit nuts",
          "description":
              "original fauji cereal muesli 250gm box pack original fauji cereals muesli fruit nuts flakes breakfast cereal break fast faujicereals cerels cerel foji fouji",
          "price": 46,
          "discountPercentage": 16.8,
          "rating": 4.94,
          "stock": 113,
          "brand": "fauji",
          "category": "groceries",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/24/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/24/1.jpg",
            "https://cdn.dummyjson.com/product-images/24/2.jpg",
            "https://cdn.dummyjson.com/product-images/24/3.jpg",
            "https://cdn.dummyjson.com/product-images/24/4.jpg",
            "https://cdn.dummyjson.com/product-images/24/thumbnail.jpg"
          ]
        },
        {
          "id": 25,
          "title": "Gulab Powder 50 Gram",
          "description":
              "Dry Rose Flower Powder Gulab Powder 50 Gram • Treats Wounds",
          "price": 70,
          "discountPercentage": 13.58,
          "rating": 4.87,
          "stock": 47,
          "brand": "Dry Rose",
          "category": "groceries",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/25/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/25/1.png",
            "https://cdn.dummyjson.com/product-images/25/2.jpg",
            "https://cdn.dummyjson.com/product-images/25/3.png",
            "https://cdn.dummyjson.com/product-images/25/4.jpg",
            "https://cdn.dummyjson.com/product-images/25/thumbnail.jpg"
          ]
        },
        {
          "id": 26,
          "title": "Plant Hanger For Home",
          "description":
              "Boho Decor Plant Hanger For Home Wall Decoration Macrame Wall Hanging Shelf",
          "price": 41,
          "discountPercentage": 17.86,
          "rating": 4.08,
          "stock": 131,
          "brand": "Boho Decor",
          "category": "home-decoration",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/26/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/26/1.jpg",
            "https://cdn.dummyjson.com/product-images/26/2.jpg",
            "https://cdn.dummyjson.com/product-images/26/3.jpg",
            "https://cdn.dummyjson.com/product-images/26/4.jpg",
            "https://cdn.dummyjson.com/product-images/26/5.jpg",
            "https://cdn.dummyjson.com/product-images/26/thumbnail.jpg"
          ]
        },
        {
          "id": 27,
          "title": "Flying Wooden Bird",
          "description":
              "Package Include 6 Birds with Adhesive Tape Shape: 3D Shaped Wooden Birds Material: Wooden MDF, Laminated 3.5mm",
          "price": 51,
          "discountPercentage": 15.58,
          "rating": 4.41,
          "stock": 17,
          "brand": "Flying Wooden",
          "category": "home-decoration",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/27/thumbnail.webp",
          "images": [
            "https://cdn.dummyjson.com/product-images/27/1.jpg",
            "https://cdn.dummyjson.com/product-images/27/2.jpg",
            "https://cdn.dummyjson.com/product-images/27/3.jpg",
            "https://cdn.dummyjson.com/product-images/27/4.jpg",
            "https://cdn.dummyjson.com/product-images/27/thumbnail.webp"
          ]
        },
        {
          "id": 28,
          "title": "3D Embellishment Art Lamp",
          "description":
              "3D led lamp sticker Wall sticker 3d wall art light on/off button  cell operated (included)",
          "price": 20,
          "discountPercentage": 16.49,
          "rating": 4.82,
          "stock": 54,
          "brand": "LED Lights",
          "category": "home-decoration",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/28/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/28/1.jpg",
            "https://cdn.dummyjson.com/product-images/28/2.jpg",
            "https://cdn.dummyjson.com/product-images/28/3.png",
            "https://cdn.dummyjson.com/product-images/28/4.jpg",
            "https://cdn.dummyjson.com/product-images/28/thumbnail.jpg"
          ]
        },
        {
          "id": 29,
          "title": "Handcraft Chinese style",
          "description":
              "Handcraft Chinese style art luxury palace hotel villa mansion home decor ceramic vase with brass fruit plate",
          "price": 60,
          "discountPercentage": 15.34,
          "rating": 4.44,
          "stock": 7,
          "brand": "luxury palace",
          "category": "home-decoration",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/29/thumbnail.webp",
          "images": [
            "https://cdn.dummyjson.com/product-images/29/1.jpg",
            "https://cdn.dummyjson.com/product-images/29/2.jpg",
            "https://cdn.dummyjson.com/product-images/29/3.webp",
            "https://cdn.dummyjson.com/product-images/29/4.webp",
            "https://cdn.dummyjson.com/product-images/29/thumbnail.webp"
          ]
        },
        {
          "id": 30,
          "title": "Key Holder",
          "description":
              "Attractive DesignMetallic materialFour key hooksReliable & DurablePremium Quality",
          "price": 30,
          "discountPercentage": 2.92,
          "rating": 4.92,
          "stock": 54,
          "brand": "Golden",
          "category": "home-decoration",
          "thumbnail":
              "https://cdn.dummyjson.com/product-images/30/thumbnail.jpg",
          "images": [
            "https://cdn.dummyjson.com/product-images/30/1.jpg",
            "https://cdn.dummyjson.com/product-images/30/2.jpg",
            "https://cdn.dummyjson.com/product-images/30/3.jpg",
            "https://cdn.dummyjson.com/product-images/30/thumbnail.jpg"
          ]
        }
      ],
      "total": 100,
      "skip": 0,
      "limit": 30
    };

    return (json['products'] as List)
        .cast<_ResponseData>()
        .map(Product.fromJson)
        .toList();
  }

  static List<Todo> getTodos() {
    final dynamic json = {
      "todos": [
        {
          "id": 1,
          "todo": "Do something nice for someone I care about",
          "completed": true,
          "userId": 26
        },
        {
          "id": 2,
          "todo": "Memorize the fifty states and their capitals",
          "completed": false,
          "userId": 48
        },
        {
          "id": 3,
          "todo": "Watch a classic movie",
          "completed": false,
          "userId": 4
        },
        {
          "id": 4,
          "todo":
              "Contribute code or a monetary donation to an open-source software project",
          "completed": false,
          "userId": 48
        },
        {
          "id": 5,
          "todo": "Solve a Rubik's cube",
          "completed": false,
          "userId": 31
        },
        {
          "id": 6,
          "todo": "Bake pastries for me and neighbor",
          "completed": false,
          "userId": 39
        },
        {
          "id": 7,
          "todo": "Go see a Broadway production",
          "completed": false,
          "userId": 32
        },
        {
          "id": 8,
          "todo":
              "Write a thank you letter to an influential person in my life",
          "completed": true,
          "userId": 13
        },
        {
          "id": 9,
          "todo": "Invite some friends over for a game night",
          "completed": false,
          "userId": 47
        },
        {
          "id": 10,
          "todo": "Have a football scrimmage with some friends",
          "completed": false,
          "userId": 19
        },
        {
          "id": 11,
          "todo": "Text a friend I haven't talked to in a long time",
          "completed": false,
          "userId": 39
        },
        {"id": 12, "todo": "Organize pantry", "completed": true, "userId": 39},
        {
          "id": 13,
          "todo": "Buy a new house decoration",
          "completed": false,
          "userId": 16
        },
        {
          "id": 14,
          "todo": "Plan a vacation I've always wanted to take",
          "completed": false,
          "userId": 28
        },
        {"id": 15, "todo": "Clean out car", "completed": false, "userId": 33},
        {
          "id": 16,
          "todo": "Draw and color a Mandala",
          "completed": true,
          "userId": 24
        },
        {
          "id": 17,
          "todo": "Create a cookbook with favorite recipes",
          "completed": false,
          "userId": 1
        },
        {
          "id": 18,
          "todo": "Bake a pie with some friends",
          "completed": false,
          "userId": 1
        },
        {
          "id": 19,
          "todo": "Create a compost pile",
          "completed": true,
          "userId": 5
        },
        {
          "id": 20,
          "todo": "Take a hike at a local park",
          "completed": true,
          "userId": 43
        },
        {
          "id": 21,
          "todo": "Take a class at local community center that interests you",
          "completed": false,
          "userId": 22
        },
        {
          "id": 22,
          "todo": "Research a topic interested in",
          "completed": false,
          "userId": 4
        },
        {
          "id": 23,
          "todo": "Plan a trip to another country",
          "completed": true,
          "userId": 37
        },
        {
          "id": 24,
          "todo": "Improve touch typing",
          "completed": false,
          "userId": 45
        },
        {
          "id": 25,
          "todo": "Learn Express.js",
          "completed": false,
          "userId": 49
        },
        {
          "id": 26,
          "todo": "Learn calligraphy",
          "completed": false,
          "userId": 50
        },
        {
          "id": 27,
          "todo": "Have a photo session with some friends",
          "completed": false,
          "userId": 14
        },
        {"id": 28, "todo": "Go to the gym", "completed": false, "userId": 15},
        {
          "id": 29,
          "todo": "Make own LEGO creation",
          "completed": false,
          "userId": 30
        },
        {
          "id": 30,
          "todo": "Take cat on a walk",
          "completed": false,
          "userId": 15
        }
      ],
      "total": 150,
      "skip": 0,
      "limit": 30
    };

    return (json['todos'] as List)
        .cast<_ResponseData>()
        .map(Todo.fromJson)
        .toList();
  }

  static List<Post> getPosts() {
    final dynamic json = {
      "posts": [
        {
          "id": 1,
          "title": "His mother had always taught him",
          "body":
              "His mother had always taught him not to ever think of himself as better than others. He'd tried to live by this motto. He never looked down on those who were less fortunate or who had less money than him. But the stupidity of the group of people he was talking to made him change his mind.",
          "userId": 9,
          "tags": ["history", "american", "crime"],
          "reactions": 2
        },
        {
          "id": 2,
          "title": "He was an expert but not in a discipline",
          "body":
              "He was an expert but not in a discipline that anyone could fully appreciate. He knew how to hold the cone just right so that the soft server ice-cream fell into it at the precise angle to form a perfect cone each and every time. It had taken years to perfect and he could now do it without even putting any thought behind it.",
          "userId": 13,
          "tags": ["french", "fiction", "english"],
          "reactions": 2
        },
        {
          "id": 3,
          "title": "Dave watched as the forest burned up on the hill.",
          "body":
              "Dave watched as the forest burned up on the hill, only a few miles from her house. The car had been hastily packed and Marta was inside trying to round up the last of the pets. Dave went through his mental list of the most important papers and documents that they couldn't leave behind. He scolded himself for not having prepared these better in advance and hoped that he had remembered everything that was needed. He continued to wait for Marta to appear with the pets, but she still was nowhere to be seen.",
          "userId": 32,
          "tags": ["magical", "history", "french"],
          "reactions": 5
        },
        {
          "id": 4,
          "title": "All he wanted was a candy bar.",
          "body":
              "All he wanted was a candy bar. It didn't seem like a difficult request to comprehend, but the clerk remained frozen and didn't seem to want to honor the request. It might have had something to do with the gun pointed at his face.",
          "userId": 12,
          "tags": ["mystery", "english", "american"],
          "reactions": 1
        },
        {
          "id": 5,
          "title": "Hopes and dreams were dashed that day.",
          "body":
              "Hopes and dreams were dashed that day. It should have been expected, but it still came as a shock. The warning signs had been ignored in favor of the possibility, however remote, that it could actually happen. That possibility had grown from hope to an undeniable belief it must be destiny. That was until it wasn't and the hopes and dreams came crashing down.",
          "userId": 41,
          "tags": ["crime", "mystery", "love"],
          "reactions": 2
        },
        {
          "id": 6,
          "title": "Dave wasn't exactly sure how he had ended up",
          "body":
              "Dave wasn't exactly sure how he had ended up in this predicament. He ran through all the events that had lead to this current situation and it still didn't make sense. He wanted to spend some time to try and make sense of it all, but he had higher priorities at the moment. The first was how to get out of his current situation of being naked in a tree with snow falling all around and no way for him to get down.",
          "userId": 47,
          "tags": ["english", "classic", "american"],
          "reactions": 3
        },
        {
          "id": 7,
          "title": "This is important to remember.",
          "body":
              "This is important to remember. Love isn't like pie. You don't need to divide it among all your friends and loved ones. No matter how much love you give, you can always give more. It doesn't run out, so don't try to hold back giving it as if it may one day run out. Give it freely and as much as you want.",
          "userId": 12,
          "tags": ["magical", "crime"],
          "reactions": 0
        },
        {
          "id": 8,
          "title": "One can cook on and with an open fire.",
          "body":
              "One can cook on and with an open fire. These are some of the ways to cook with fire outside. Cooking meat using a spit is a great way to evenly cook meat. In order to keep meat from burning, it's best to slowly rotate it.",
          "userId": 31,
          "tags": ["american", "english"],
          "reactions": 9
        },
        {
          "id": 9,
          "title": "There are different types of secrets.",
          "body":
              "There are different types of secrets. She had held onto plenty of them during her life, but this one was different. She found herself holding onto the worst type. It was the type of secret that could gnaw away at your insides if you didn't tell someone about it, but it could end up getting you killed if you did.",
          "userId": 42,
          "tags": ["american", "history", "magical"],
          "reactions": 2
        },
        {
          "id": 10,
          "title": "They rushed out the door.",
          "body":
              "They rushed out the door, grabbing anything and everything they could think of they might need. There was no time to double-check to make sure they weren't leaving something important behind. Everything was thrown into the car and they sped off. Thirty minutes later they were safe and that was when it dawned on them that they had forgotten the most important thing of all.",
          "userId": 1,
          "tags": ["fiction", "magical", "history"],
          "reactions": 4
        },
        {
          "id": 11,
          "title": "It wasn't quite yet time to panic.",
          "body":
              "It wasn't quite yet time to panic. There was still time to salvage the situation. At least that is what she was telling himself. The reality was that it was time to panic and there wasn't time to salvage the situation, but he continued to delude himself into believing there was.",
          "userId": 25,
          "tags": ["mystery", "american", "history"],
          "reactions": 5
        },
        {
          "id": 12,
          "title": "She was aware that things could go wrong.",
          "body":
              "She was aware that things could go wrong. In fact, she had trained her entire life in anticipation that things would go wrong one day. She had quiet confidence as she started to see that this was the day that all her training would be worthwhile and useful. At this point, she had no idea just how wrong everything would go that day.",
          "userId": 26,
          "tags": ["love", "english"],
          "reactions": 7
        },
        {
          "id": 13,
          "title": "She wanted rainbow hair.",
          "body":
              "She wanted rainbow hair. That's what she told the hairdresser. It should be deep rainbow colors, too. She wasn't interested in pastel rainbow hair. She wanted it deep and vibrant so there was no doubt that she had done this on purpose.",
          "userId": 44,
          "tags": ["mystery", "classic", "french"],
          "reactions": 0
        },
        {
          "id": 14,
          "title": "The paper was blank.",
          "body":
              "The paper was blank. It shouldn't have been. There should have been writing on the paper, at least a paragraph if not more. The fact that the writing wasn't there was frustrating. Actually, it was even more than frustrating. It was downright distressing.",
          "userId": 1,
          "tags": ["mystery", "english", "love"],
          "reactions": 0
        },
        {
          "id": 15,
          "title": "The trees, therefore, must be such old",
          "body":
              "The trees, therefore, must be such old and primitive techniques that they thought nothing of them, deeming them so inconsequential that even savages like us would know of them and not be suspicious. At that, they probably didn't have too much time after they detected us orbiting and intending to land. And if that were true, there could be only one place where their civilization was hidden.",
          "userId": 15,
          "tags": ["fiction", "history", "crime"],
          "reactions": 1
        },
        {
          "id": 16,
          "title": "There was only one way to do things in the Statton house.",
          "body":
              "There was only one way to do things in the Statton house. That one way was to do exactly what the father, Charlie, demanded. He made the decisions and everyone else followed without question. That was until today.",
          "userId": 31,
          "tags": ["magical", "french", "american"],
          "reactions": 5
        },
        {
          "id": 17,
          "title": "She was in a hurry.",
          "body":
              "She was in a hurry. Not the standard hurry when you're in a rush to get someplace, but a frantic hurry. The type of hurry where a few seconds could mean life or death. She raced down the road ignoring speed limits and weaving between cars. She was only a few minutes away when traffic came to a dead standstill on the road ahead.",
          "userId": 5,
          "tags": ["french", "magical", "english"],
          "reactions": 0
        },
        {
          "id": 18,
          "title": "She had a terrible habit o comparing her life to others",
          "body":
              "She had a terrible habit o comparing her life to others. She realized that their life experiences were completely different than her own and that she saw only what they wanted her to see, but that didn't matter. She still compared herself and yearned for what she thought they had and she didn't.",
          "userId": 28,
          "tags": ["history", "french", "love"],
          "reactions": 3
        },
        {
          "id": 19,
          "title": "The rain and wind abruptly stopped.",
          "body":
              "The rain and wind abruptly stopped, but the sky still had the gray swirls of storms in the distance. Dave knew this feeling all too well. The calm before the storm. He only had a limited amount of time before all Hell broke loose, but he stopped to admire the calmness. Maybe it would be different this time, he thought, with the knowledge deep within that it wouldn't.",
          "userId": 46,
          "tags": ["fiction", "crime", "magical"],
          "reactions": 8
        },
        {
          "id": 20,
          "title": "He couldn't remember exactly where he had read it",
          "body":
              "He couldn't remember exactly where he had read it, but he was sure that he had. The fact that she didn't believe him was quite frustrating as he began to search the Internet to find the article. It wasn't as if it was something that seemed impossible. Yet she insisted on always seeing the source whenever he stated a fact.",
          "userId": 38,
          "tags": ["french", "classic"],
          "reactions": 9
        },
        {
          "id": 21,
          "title": "He wandered down the stairs and into the basement",
          "body":
              "He wandered down the stairs and into the basement. The damp, musty smell of unuse hung in the air. A single, small window let in a glimmer of light, but this simply made the shadows in the basement deeper. He inhaled deeply and looked around at a mess that had been accumulating for over 25 years. He was positive that this was the place he wanted to live.",
          "userId": 37,
          "tags": ["french", "american"],
          "reactions": 8
        },
        {
          "id": 22,
          "title": "She has seen this scene before.",
          "body":
              "She has seen this scene before. It had come to her in dreams many times before. She had to pinch herself to make sure it wasn't a dream again. As her fingers squeezed against her arm, she felt the pain. It was this pain that immediately woke her up.",
          "userId": 30,
          "tags": ["classic", "love", "history"],
          "reactions": 6
        },
        {
          "id": 23,
          "title":
              "It's an unfortunate reality that we don't teach people how to make money",
          "body":
              "It's an unfortunate reality that we don't teach people how to make money (beyond getting a 9 to 5 job) as part of our education system. The truth is there are a lot of different, legitimate ways to make money. That doesn't mean they are easy and that you won't have to work hard to succeed, but it does mean that if you're willing to open your mind a bit you don't have to be stuck in an office from 9 to 5 for the next fifty years o your life.",
          "userId": 2,
          "tags": ["crime", "english"],
          "reactions": 4
        },
        {
          "id": 24,
          "title": "The robot clicked disapprovingly.",
          "body":
              "The robot clicked disapprovingly, gurgled briefly inside its cubical interior and extruded a pony glass of brownish liquid. \"Sir, you will undoubtedly end up in a drunkard's grave, dead of hepatic cirrhosis,\" it informed me virtuously as it returned my ID card. I glared as I pushed the glass across the table.",
          "userId": 34,
          "tags": ["crime", "american", "love"],
          "reactions": 2
        },
        {
          "id": 25,
          "title": "It went through such rapid contortions",
          "body":
              "It went through such rapid contortions that the little bear was forced to change his hold on it so many times he became confused in the darkness, and could not, for the life of him, tell whether he held the sheep right side up, or upside down. But that point was decided for him a moment later by the animal itself, who, with a sudden twist, jabbed its horns so hard into his lowest ribs that he gave a grunt of anger and disgust.",
          "userId": 27,
          "tags": ["fiction", "history", "french"],
          "reactions": 3
        },
        {
          "id": 26,
          "title": "She patiently waited for his number to be called.",
          "body":
              "She patiently waited for his number to be called. She had no desire to be there, but her mom had insisted that she go. She's resisted at first, but over time she realized it was simply easier to appease her and go. Mom tended to be that way. She would keep insisting until you wore down and did what she wanted. So, here she sat, patiently waiting for her number to be called.",
          "userId": 27,
          "tags": ["french", "mystery", "crime"],
          "reactions": 7
        },
        {
          "id": 27,
          "title": "Ten more steps.",
          "body":
              "If he could take ten more steps it would be over, but his legs wouldn't move. He tried to will them to work, but they wouldn't listen to his brain. Ten more steps and it would be over but it didn't appear he would be able to do it.",
          "userId": 17,
          "tags": ["mystery", "classic", "love"],
          "reactions": 4
        },
        {
          "id": 28,
          "title": "He had three simple rules by which he lived.",
          "body":
              "He had three simple rules by which he lived. The first was to never eat blue food. There was nothing in nature that was edible that was blue. People often asked about blueberries, but everyone knows those are actually purple. He understood it was one of the stranger rules to live by, but it had served him well thus far in the 50+ years of his life.",
          "userId": 22,
          "tags": ["crime", "love"],
          "reactions": 2
        },
        {
          "id": 29,
          "title": "The chair sat in the corner where it had been",
          "body":
              "The chair sat in the corner where it had been for over 25 years. The only difference was there was someone actually sitting in it. How long had it been since someone had done that? Ten years or more he imagined. Yet there was no denying the presence in the chair now.",
          "userId": 38,
          "tags": ["mystery", "american"],
          "reactions": 6
        },
        {
          "id": 30,
          "title": "Things aren't going well at all",
          "body":
              "Things aren't going well at all with mom today. She is just a limp noodle and wants to sleep all the time. I sure hope that things get better soon.",
          "userId": 2,
          "tags": ["american", "love", "fiction"],
          "reactions": 0
        },
        {
          "id": 31,
          "title": "It was just a burger.",
          "body":
              "It was just a burger. Why couldn't she understand that? She knew he'd completely changed his life around her eating habits, so why couldn't she give him a break this one time? She wasn't even supposed to have found out. Yes, he had promised her and yes, he had broken that promise, but still in his mind, all it had been was just a burger.",
          "userId": 36,
          "tags": ["classic", "fiction", "magical"],
          "reactions": 0
        },
        {
          "id": 32,
          "title": "He swung back the fishing pole and cast the line",
          "body":
              "He swung back the fishing pole and cast the line which ell 25 feet away into the river. The lure landed in the perfect spot and he was sure he would soon get a bite. He never expected that the bite would come from behind in the form of a bear.",
          "userId": 2,
          "tags": ["mystery", "american", "english"],
          "reactions": 2
        },
        {
          "id": 33,
          "title": "He lifted the bottle to his lips and took a sip",
          "body":
              "He lifted the bottle to his lips and took a sip of the drink. He had tasted this before, but he couldn't quite remember the time and place it had happened. He desperately searched his mind trying to locate and remember where he had tasted this when the bicycle ran over his foot.",
          "userId": 33,
          "tags": ["american", "french", "love"],
          "reactions": 5
        },
        {
          "id": 34,
          "title": "Debbie had taken George for granted",
          "body":
              "Debbie had taken George for granted for more than fifteen years now. He wasn't sure what exactly had made him choose this time and place to address the issue, but he decided that now was the time. He looked straight into her eyes and just as she was about to speak, turned away and walked out the door.",
          "userId": 30,
          "tags": ["american", "crime", "history"],
          "reactions": 5
        },
        {
          "id": 35,
          "title": "She sat deep in thought.",
          "body":
              "She sat deep in thought. The next word that came out o her mouth would likely be the most important word of her life. It had to be exact with no possibility of being misinterpreted. She was ready. She looked deeply into his eyes and said, \"Octopus.\"",
          "userId": 15,
          "tags": ["french", "american", "fiction"],
          "reactions": 5
        },
        {
          "id": 36,
          "title": "The leather jacked showed the scars",
          "body":
              "The leather jacked showed the scars of being his favorite for years. It wore those scars with pride, feeling that they enhanced his presence rather than diminishing it. The scars gave it character and had not overwhelmed to the point that it had become ratty. The jacket was in its prime and it knew it.",
          "userId": 45,
          "tags": ["french", "fiction"],
          "reactions": 4
        },
        {
          "id": 37,
          "title": "There was no time.",
          "body":
              "There was no time. He ran out of the door without half the stuff he needed for work, but it didn't matter. He was late and if he didn't make this meeting on time, someone's life may be in danger.",
          "userId": 31,
          "tags": ["history", "fiction", "english"],
          "reactions": 4
        },
        {
          "id": 38,
          "title": "He collected the plastic trash on a daily basis.",
          "body":
              "He collected the plastic trash on a daily basis. It never seemed to end. Even if he cleaned the entire beach, more plastic would cover it the next day after the tide had come in. Although it was a futile effort that would never be done, he continued to pick up the trash each day.",
          "userId": 19,
          "tags": ["english", "mystery", "classic"],
          "reactions": 5
        },
        {
          "id": 39,
          "title": "It was so great to hear from you today",
          "body":
              "\"It was so great to hear from you today and it was such weird timing,\" he said. \"This is going to sound funny and a little strange, but you were in a dream I had just a couple of days ago. I'd love to get together and tell you about it if you're up for a cup of coffee,\" he continued, laying the trap he'd been planning for years.",
          "userId": 36,
          "tags": ["french", "magical", "american"],
          "reactions": 9
        },
        {
          "id": 40,
          "title": "Have you ever wondered about toes?",
          "body":
              "Why 10 toes and not 12. Why are some bigger than others? Some people can use their toes to pick up things while others can barely move them on command. Some toes are nice to look at while others are definitely not something you want to look at. Toes can be stubbed and make us scream. Toes help us balance and walk. 10 toes are just something to ponder.",
          "userId": 20,
          "tags": ["history", "love", "crime"],
          "reactions": 3
        },
        {
          "id": 41,
          "title": "His parents continued to question him.",
          "body":
              "He didn't know what to say to them since they refused to believe the truth. He explained again and again, and they dismissed his explanation as a figment of his imagination. There was no way that grandpa, who had been dead for five years, could have told him where the treasure had been hidden. Of course, it didn't help that grandpa was roaring with laughter in the chair next to him as he tried to explain once again how he'd found it.",
          "userId": 13,
          "tags": ["english", "history", "american"],
          "reactions": 5
        },
        {
          "id": 42,
          "title":
              "You know that tingly feeling you get on the back of your neck sometimes?",
          "body":
              "You know that tingly feeling you get on the back of your neck sometimes? I just got that feeling when talking with her. You know I don't believe in sixth senses, but there is something not right with her. I don't know how I know, but I just do.",
          "userId": 7,
          "tags": ["mystery", "french", "american"],
          "reactions": 4
        },
        {
          "id": 43,
          "title": "Explain to me again why I shouldn't cheat?",
          "body":
              "\"Explain to me again why I shouldn't cheat?\" he asked. \"All the others do and nobody ever gets punished for doing so. I should go about being happy losing to cheaters because I know that I don't? That's what you're telling me?\"",
          "userId": 36,
          "tags": ["classic", "french", "fiction"],
          "reactions": 2
        },
        {
          "id": 44,
          "title": "A long black shadow slid across the pavement",
          "body":
              "A long black shadow slid across the pavement near their feet and the five Venusians, very much startled, looked overhead. They were barely in time to see the huge gray form of the carnivore before it vanished behind a sign atop a nearby building which bore the mystifying information \"Pepsi-Cola.\"",
          "userId": 5,
          "tags": ["crime", "english", "classic"],
          "reactions": 4
        },
        {
          "id": 45,
          "title": "The red line moved across the page.",
          "body":
              "The red line moved across the page. With each millimeter it advanced forward, something changed in the room. The actual change taking place was difficult to perceive, but the change was real. The red line continued relentlessly across the page and the room would never be the same.",
          "userId": 12,
          "tags": ["love", "american"],
          "reactions": 9
        },
        {
          "id": 46,
          "title":
              "The clowns had taken over. And yes, they were literally clowns.",
          "body":
              "The clowns had taken over. And yes, they were literally clowns. Over 100 had appeared out of a small VW bug that had been driven up to the bank. Now they were all inside and had taken it over.",
          "userId": 43,
          "tags": ["crime", "magical", "american"],
          "reactions": 2
        },
        {
          "id": 47,
          "title":
              "The shoes had been there for as long as anyone could remember.",
          "body":
              "The shoes had been there for as long as anyone could remember. In fact, it was difficult for anyone to come up with a date they had first appeared. It had seemed they'd always been there and yet they seemed so out of place. Why nobody had removed them was a question that had been asked time and again, but while they all thought it, nobody had ever found the energy to actually do it.",
          "userId": 11,
          "tags": ["american", "french", "crime"],
          "reactions": 2
        },
        {
          "id": 48,
          "title": "Trees. It was something about the trees.",
          "body":
              "Trees. It was something about the trees. The way they swayed with the wind in unison. The way they shaded the area around them. The sounds of their leaves in the wind and the creaks from the branches as they sway, The trees were making a statement that I just couldn't understand.",
          "userId": 18,
          "tags": ["love", "fiction", "crime"],
          "reactions": 9
        },
        {
          "id": 49,
          "title": "Sometimes it's just better not to be seen.",
          "body":
              "Sometimes it's just better not to be seen. That's how Harry had always lived his life. He prided himself as being the fly on the wall and the fae that blended into the crowd. That's why he was so shocked that she noticed him.",
          "userId": 14,
          "tags": ["french", "classic"],
          "reactions": 2
        },
        {
          "id": 50,
          "title":
              "It was a concerning development that he couldn't get out of his mind.",
          "body":
              "He'd had many friends throughout his early years and had fond memories of playing with them, but he couldn't understand how it had all stopped. There was some point as he grew up that he played with each of his friends for the very last time, and he had no idea that it would be the last.",
          "userId": 48,
          "tags": ["french", "fiction", "love"],
          "reactions": 2
        },
        {
          "id": 51,
          "title": "The towels had been hanging from the rod for years.",
          "body":
              "The towels had been hanging from the rod for years. They were stained and worn, and quite frankly, just plain ugly. Debra didn't want to touch them but she really didn't have a choice. It was important for her to see what was living within them.",
          "userId": 47,
          "tags": ["magical", "english", "american"],
          "reactions": 7
        },
        {
          "id": 52,
          "title": "The headache wouldn't go away.",
          "body":
              "The headache wouldn't go away. She's taken medicine but even that didn't help. The monstrous throbbing in her head continued. She had this happen to her only once before in her life and she realized that only one thing could be happening.",
          "userId": 9,
          "tags": ["mystery", "love"],
          "reactions": 6
        },
        {
          "id": 53,
          "title": "The young man wanted a role model.",
          "body":
              "The young man wanted a role model. He looked long and hard in his youth, but that role model never materialized. His only choice was to embrace all the people in his life he didn't want to be like.",
          "userId": 46,
          "tags": ["magical", "american"],
          "reactions": 7
        },
        {
          "id": 54,
          "title": "Debbie knew she was being selfish",
          "body":
              "Debbie knew she was being selfish and unreasonable. She understood why the others in the room were angry and frustrated with her and the way she was acting. In her eyes, it didn't really matter how they felt because she simply didn't care.",
          "userId": 30,
          "tags": ["english", "american"],
          "reactions": 5
        },
        {
          "id": 55,
          "title": "She tried to explain that love wasn't like pie.",
          "body":
              "She tried to explain that love wasn't like pie. There wasn't a set number of slices to be given out. There wasn't less to be given to one person if you wanted to give more to another. That after a set amount was given out it would all disappear. She tried to explain this, but it fell on deaf ears.",
          "userId": 50,
          "tags": ["mystery", "crime", "fiction"],
          "reactions": 7
        },
        {
          "id": 56,
          "title": "The house was located at the top of the hill",
          "body":
              "The house was located at the top of the hill at the end of a winding road. It wasn't obvious that the house was there, but everyone in town knew that it existed. They were just all too afraid to ever go and see it in person.",
          "userId": 28,
          "tags": ["classic", "french", "history"],
          "reactions": 9
        },
        {
          "id": 57,
          "title": "It seemed like it should have been so simple.",
          "body":
              "It seemed like it should have been so simple. There was nothing inherently difficult with getting the project done. It was simple and straightforward enough that even a child should have been able to complete it on time, but that wasn't the case. The deadline had arrived and the project remained unfinished.",
          "userId": 25,
          "tags": ["love", "classic", "english"],
          "reactions": 5
        },
        {
          "id": 58,
          "title": "Balloons are pretty and come in different colors",
          "body":
              "Balloons are pretty and come in different colors, different shapes, different sizes, and they can even adjust sizes as needed. But don't make them too big or they might just pop, and then bye-bye balloon. It'll be gone and lost for the rest of mankind. They can serve a variety of purposes, from decorating to water balloon wars. You just have to use your head to think a little bit about what to do with them.",
          "userId": 3,
          "tags": ["american", "crime", "magical"],
          "reactions": 9
        },
        {
          "id": 59,
          "title":
              "She looked at her student wondering if she could ever get through.",
          "body":
              "She looked at her student wondering if she could ever get through. \"You need to learn to think for yourself,\" she wanted to tell him. \"Your friends are holding you back and bringing you down.\" But she didn't because she knew his friends were all that he had and even if that meant a life of misery, he would never give them up.",
          "userId": 29,
          "tags": ["classic", "english", "history"],
          "reactions": 4
        },
        {
          "id": 60,
          "title":
              "He heard the crack echo in the late afternoon about a mile away.",
          "body":
              "He heard the crack echo in the late afternoon about a mile away. His heart started racing and he bolted into a full sprint. \"It wasn't a gunshot, it wasn't a gunshot,\" he repeated under his breathlessness as he continued to sprint.",
          "userId": 33,
          "tags": ["love", "classic", "history"],
          "reactions": 7
        },
        {
          "id": 61,
          "title": "I'm going to hire professional help tomorrow.",
          "body":
              "I'm going to hire professional help tomorrow. I can't handle this anymore. She fell over the coffee table and now there is blood in her catheter. This is much more than I ever signed up to do.",
          "userId": 21,
          "tags": ["fiction", "classic", "american"],
          "reactions": 6
        },
        {
          "id": 62,
          "title": "He watched as the young man tried",
          "body":
              "He watched as the young man tried to impress everyone in the room with his intelligence. There was no doubt that he was smart. The fact that he was more intelligent than anyone else in the room could have been easily deduced, but nobody was really paying any attention due to the fact that it was also obvious that the young man only cared about his intelligence.",
          "userId": 4,
          "tags": ["magical", "mystery", "love"],
          "reactions": 6
        },
        {
          "id": 63,
          "title": "Many people say that life isn't like a bed of roses.",
          "body":
              "Many people say that life isn't like a bed of roses. I beg to differ. I think that life is quite like a bed of roses. Just like life, a bed of roses looks pretty on the outside, but when you're in it, you find that it is nothing but thorns and pain. I myself have been pricked quite badly.",
          "userId": 9,
          "tags": ["magical"],
          "reactions": 4
        },
        {
          "id": 64,
          "title": "There are only three ways to make this work.",
          "body":
              "There are only three ways to make this work. The first is to let me take care of everything. The second is for you to take care of everything. The third is to split everything 50 / 50. I think the last option is the most preferable, but I'm certain it'll also mean the end of our marriage.",
          "userId": 34,
          "tags": ["classic", "english"],
          "reactions": 0
        },
        {
          "id": 65,
          "title": "Time is all relative based on age and experience.",
          "body":
              "As a middle-aged adult, time flies by as you watch your children grow up. And finally, as you get old and you have fewer responsibilities and fewer demands on you, time slows. You appreciate each day and are thankful you are alive. An hour is the same amount of time for everyone yet it can feel so different in how it goes by.",
          "userId": 46,
          "tags": ["love", "fiction", "classic"],
          "reactions": 1
        },
        {
          "id": 66,
          "title": "Time is all relative based on age and experience.",
          "body":
              "When you are a child an hour is a long time to wait but a very short time when that’s all the time you are allowed on your iPad. As a teenager time goes faster the more deadlines you have and the more you procrastinate. As a young adult, you think you have forever to live and don’t appreciate the time you spend with others.",
          "userId": 42,
          "tags": ["mystery", "magical", "crime"],
          "reactions": 7
        },
        {
          "id": 67,
          "title": "Welcome to my world.",
          "body":
              "You will be greeted by the unexpected here and your mind will be challenged and expanded in ways that you never thought possible. That is if you are able to survive...",
          "userId": 33,
          "tags": ["love", "history"],
          "reactions": 8
        },
        {
          "id": 68,
          "title": "She sat down with her notebook in her hand",
          "body":
              "She sat down with her notebook in her hand, her mind wandering to faraway places. She paused and considered all that had happened. It hadn't gone as expected. When the day began she thought it was going to be a bad one, but as she sat recalling the day's events to write them down, she had to admit, it had been a rather marvelous day.",
          "userId": 33,
          "tags": ["history", "english", "love"],
          "reactions": 3
        },
        {
          "id": 69,
          "title":
              "The wave roared towards them with speed and violence they had not anticipated.",
          "body":
              "The wave roared towards them with speed and violence they had not anticipated. They both turned to run but by that time it was too late. The wave crashed into their legs sweeping both of them off of their feet. They now found themselves in a washing machine of saltwater, getting tumbled and not know what was up or down.",
          "userId": 42,
          "tags": ["american", "fiction", "classic"],
          "reactions": 6
        },
        {
          "id": 70,
          "title": "Sometimes there isn't a good answer.",
          "body":
              "Sometimes there isn't a good answer. No matter how you try to rationalize the outcome, it doesn't make sense. And instead of an answer, you are simply left with a question. Why?",
          "userId": 38,
          "tags": ["english", "history", "crime"],
          "reactions": 6
        },
        {
          "id": 71,
          "title": "He knew what he was supposed to do.",
          "body":
              "He knew what he was supposed to do. That had been apparent from the beginning. That was what made the choice so difficult. What he was supposed to do and what he would do were not the same. This would have been fine if he were willing to face the inevitable consequences, but he wasn't.",
          "userId": 34,
          "tags": ["love", "fiction"],
          "reactions": 6
        },
        {
          "id": 72,
          "title": "The words hadn't flowed from his fingers",
          "body":
              "The words hadn't flowed from his fingers for the past few weeks. He never imagined he'd find himself with writer's block, but here he sat with a blank screen in front of him.",
          "userId": 44,
          "tags": ["crime", "history", "classic"],
          "reactions": 9
        },
        {
          "id": 73,
          "title": "It was difficult to explain to them",
          "body":
              "It was difficult to explain to them how the diagnosis of certain death had actually given him life. While everyone around him was in tears and upset, he actually felt more at ease. The doctor said it would be less than a year. That gave him a year to live, something he'd failed to do with his daily drudgery of a routine that had passed as life until then.",
          "userId": 21,
          "tags": ["fiction", "classic", "magical"],
          "reactions": 2
        },
        {
          "id": 74,
          "title": "He couldn't move. His head throbbed and spun.",
          "body":
              "He couldn't move. His head throbbed and spun. He couldn't decide if it was the flu or the drinking last night. It was probably a combination of both.",
          "userId": 30,
          "tags": ["crime", "fiction", "classic"],
          "reactions": 9
        },
        {
          "id": 75,
          "title": "There was something beautiful in his hate.",
          "body":
              "There was something beautiful in his hate. It wasn't the hate itself as it was a disgusting display of racism and intolerance. It was what propelled the hate and the fact that although he had this hate, he didn't understand where it came from. It was at that moment that she realized that there was hope in changing him.",
          "userId": 5,
          "tags": ["classic", "love", "french"],
          "reactions": 6
        },
        {
          "id": 76,
          "title": "Her mom had warned her.",
          "body":
              "Her mom had warned her. She had been warned time and again, but she had refused to believe her. She had done everything right and she knew she would be rewarded for doing so with the promotion.",
          "userId": 15,
          "tags": ["mystery", "english"],
          "reactions": 6
        },
        {
          "id": 77,
          "title": "She nervously peered over the edge.",
          "body":
              "She nervously peered over the edge. She understood in her mind that the view was supposed to be beautiful, but all she felt was fear. There had always been something about heights that disturbed her, and now she could feel the full force of this unease.",
          "userId": 37,
          "tags": ["crime", "english", "french"],
          "reactions": 6
        },
        {
          "id": 78,
          "title": "The thing that's great about this job",
          "body":
              "The thing that's great about this job is the time sourcing the items involves no traveling. I just look online to buy it. It's really as simple as that. While everyone else is searching for what they can sell, I sit in front of my computer and buy better stuff for less money and spend a fraction of the time doing it.",
          "userId": 15,
          "tags": ["crime", "magical"],
          "reactions": 3
        },
        {
          "id": 79,
          "title": "It was a simple tip of the hat",
          "body":
              "Grace didn't think that anyone else besides her had even noticed it. It wasn't anything that the average person would notice, let alone remember at the end of the day.",
          "userId": 31,
          "tags": ["american", "classic", "history"],
          "reactions": 1
        },
        {
          "id": 80,
          "title": "Cake or pie?",
          "body":
              "I can tell a lot about you by which one you pick. It may seem silly, but cake people and pie people are really different. I know which one I hope you are, but that's not for me to decide. So, what is it? Cake or pie?",
          "userId": 50,
          "tags": ["classic", "love", "french"],
          "reactions": 9
        },
        {
          "id": 81,
          "title": "There was something in the tree.",
          "body":
              "There was something in the tree. It was difficult to tell from the ground, but Rachael could see movement. She squinted her eyes and peered in the direction of the movement, trying to decipher exactly what she had spied.",
          "userId": 22,
          "tags": ["mystery", "fiction", "love"],
          "reactions": 4
        },
        {
          "id": 82,
          "title": "Pink ponies and purple giraffes roamed the field.",
          "body":
              "Pink ponies and purple giraffes roamed the field. Cotton candy grew from the ground as a chocolate river meandered off to the side. What looked like stones in the pasture were actually rock candy. Everything in her dream seemed to be perfect except for the fact that she had no mouth.",
          "userId": 10,
          "tags": ["french", "classic", "mystery"],
          "reactions": 8
        },
        {
          "id": 83,
          "title": "Are you getting my texts???",
          "body":
              "\"Are you getting my texts???\" she texted to him. He glanced at it and chuckled under his breath. Of course he was getting them, but if he wasn't getting them, how would he ever be able to answer? He put the phone down and continued on his project. He was ignoring her texts and he planned to continue to do so.",
          "userId": 2,
          "tags": ["mystery", "magical", "history"],
          "reactions": 1
        },
        {
          "id": 84,
          "title":
              "He stepped away from the mic. This was the best take he had done so far",
          "body":
              "He stepped away from the mic. This was the best take he had done so far, but something seemed missing. Then it struck him all at once. Visuals ran in front of his eyes and music rang in his ears. His eager fingers went to work in an attempt to capture his thoughts hoping the results would produce something that was at least half their glory.",
          "userId": 15,
          "tags": ["magical", "fiction"],
          "reactions": 8
        },
        {
          "id": 85,
          "title": "The choice was red, green, or blue.",
          "body":
              "It didn't seem like an important choice when he was making it, but it was a choice nonetheless. Had he known the consequences at that time, he would likely have considered the choice a bit longer. In the end, he didn't and ended up choosing blue.",
          "userId": 17,
          "tags": ["english", "fiction"],
          "reactions": 5
        },
        {
          "id": 86,
          "title":
              "He picked up the burnt end of the branch and made a mark on the stone.",
          "body":
              "Day 52 if the marks on the stone were accurate. He couldn't be sure. Day and nights had begun to blend together creating confusion, but he knew it was a long time. Much too long.",
          "userId": 37,
          "tags": ["english", "love", "fiction"],
          "reactions": 6
        },
        {
          "id": 87,
          "title": "The red glint of paint sparkled under the sun.",
          "body":
              "He had dreamed of owning this car since he was ten, and that dream had become a reality less than a year ago. It was his baby and he spent hours caring for it, pampering it, and fondling over it. She knew this all too well, and that's exactly why she had taken a sludge hammer to it.",
          "userId": 27,
          "tags": ["english", "love", "french"],
          "reactions": 0
        },
        {
          "id": 88,
          "title": "There were little things that she simply could not stand.",
          "body":
              "There were little things that she simply could not stand. The sound of someone tapping their nails on the table. A person chewing with their mouth open. Another human imposing themselves into her space. She couldn't stand any of these things, but none of them compared to the number one thing she couldn't stand which topped all of them combined.",
          "userId": 18,
          "tags": ["history", "classic", "magical"],
          "reactions": 3
        },
        {
          "id": 89,
          "title": "On Saturday nights I would sit by the phone",
          "body":
              "in the lobby, waiting for Naoko to call. Most of the others were out, so the lobby was usually deserted. I would stare at the grains of light suspended in that silent space, struggling to see into my own heart. What did I want? ",
          "userId": 6,
          "tags": ["english", "mystery"],
          "reactions": 4
        },
        {
          "id": 90,
          "title": "Gentlemen of the free-and-easy sort",
          "body":
              "plume themselves on being acquainted with a move or two, and being usually equal to the time-of-day, express the wide range of their capacity for adventure by observing that they are good for anything from pitch-and-toss to manslaughter;",
          "userId": 34,
          "tags": ["love", "history"],
          "reactions": 1
        },
        {
          "id": 91,
          "title": "In truth, Mrs. Gradgrind’s stock of facts in",
          "body":
              "general was woefully defective; but Mr. Gradgrind in raising her to her high matrimonial position, had been influenced by two reasons.  Firstly, she was most satisfactory as a question of figures; and, secondly,",
          "userId": 20,
          "tags": ["love", "crime"],
          "reactions": 9
        },
        {
          "id": 92,
          "title": "‘My dear Bounderby,’ Mr. Gradgrind began",
          "body":
              "‘Now, you’ll excuse me,’ said Bounderby, ‘but I don’t want to be too dear.  That, to start with.  When I begin to be dear to a man, I generally find that his intention is to come over me.",
          "userId": 4,
          "tags": ["classic", "love", "english"],
          "reactions": 1
        },
        {
          "id": 93,
          "title": "He could find no answer, except life’s usual",
          "body":
              "answer to the most complex and insoluble questions. That answer is: live in the needs of the day, that is, find forgetfulness.",
          "userId": 48,
          "tags": ["magical", "american", "classic"],
          "reactions": 5
        },
        {
          "id": 94,
          "title": "Happiness was different in childhood.",
          "body":
              "so much then a matter simply of accumulation, of taking things – new experiences, new emotions – and applying them like so many polished tiles to what would someday be the marvellously finished pavilion of the self.",
          "userId": 3,
          "tags": ["american", "crime", "mystery"],
          "reactions": 2
        },
        {
          "id": 95,
          "title": "So what is the answer? How can you stand",
          "body":
              "From the moment you go to prison you must put your cozy past firmly behind you. At the very threshold, you must say to yourself: “My life is over, a little early to be sure, but there’s nothing to be done about it. I shall never return to freedom.",
          "userId": 1,
          "tags": ["love", "fiction", "history"],
          "reactions": 2
        },
        {
          "id": 96,
          "title": "If only it were all so simple! If only there",
          "body":
              "were evil people somewhere insidiously committing evil deeds, and it were necessary only to separate them from the rest of us and destroy them. But the line dividing good and evil cuts through the heart of every human being. And who is willing to destroy a piece of his own heart?",
          "userId": 13,
          "tags": ["classic", "mystery", "french"],
          "reactions": 9
        },
        {
          "id": 97,
          "title": "As for the leaflets reporting the creation of",
          "body":
              "the ROA, the “Russian Liberation Army,” not only were they written in bad Russian, but they were imbued with an alien spirit that was clearly German and, moreover, seemed little concerned with their presumed subject; besides, and on the other hand,",
          "userId": 47,
          "tags": ["classic", "fiction", "crime"],
          "reactions": 8
        },
        {
          "id": 98,
          "title": "And how can you bring it home to them?",
          "body":
              "an inspiration? By a vision? A dream? Brothers! People! Why has life been given you? In the deep, deaf stillness of midnight, the doors of the death cells are being swung open – and great-souled people are being dragged out to be shot.",
          "userId": 37,
          "tags": ["english", "mystery", "fiction"],
          "reactions": 6
        },
        {
          "id": 99,
          "title": "Like all men not really up to their job,",
          "body":
              "a stickler for externals and petty quotidian things; and in lieu of an intellect he had accumulated an armoury of capitalized key-words like Discipline and Tradition and Responsibility.",
          "userId": 40,
          "tags": ["crime", "classic"],
          "reactions": 9
        },
        {
          "id": 100,
          "title": "But Art is a punitive sentence, not a",
          "body":
              "birthright, & there is nothing in my early life that suggests artistick aptitude or even interest, my pastimes & fascinations nearly all being what may – & were – deemed the merely villainous.",
          "userId": 39,
          "tags": ["love", "history", "crime"],
          "reactions": 3
        },
        {
          "id": 101,
          "title": "All Hallows Day: grief comes in waves.",
          "body":
              "t threatens to capsize him. He doesn’t believe that the dead come back; but that doesn’t stop him from feeling the brush of their fingertips, wingtips, against his shoulder.",
          "userId": 19,
          "tags": ["classic", "crime", "english"],
          "reactions": 9
        },
        {
          "id": 102,
          "title": "Being in high school, Miles had no idea there",
          "body":
              "were girls in the world who might be nice to some boy who’d suffered the misfortune of falling in love with them, even when they couldn’t return the favor.",
          "userId": 8,
          "tags": ["love", "american", "english"],
          "reactions": 9
        },
        {
          "id": 103,
          "title": "But they didn’t devote the whole evening to",
          "body":
              "music. After a while they played at forfeits; for it is good to be children sometimes, and never better than at Christmas, when its mighty Founder was a child himself. Stop. There was first a game at blind-man’s buff.",
          "userId": 25,
          "tags": ["fiction", "french", "classic"],
          "reactions": 2
        },
        {
          "id": 104,
          "title": "Each failed overture of peace made the next",
          "body":
              "overture less likely to succeed. Before long, what at first glance had seemed to Gary an absurd possiiblity – that the till of their marriage no longer contained sufficient funds of love and goodwill to cover the emotional costs that going to St.",
          "userId": 46,
          "tags": ["american", "english", "crime"],
          "reactions": 1
        },
        {
          "id": 105,
          "title": "All men dream, but not equally.",
          "body":
              "dream by night in the dusty recesses of their minds wake in the day to find that it was vanity: but the dreamers of the day are dangerous men, for they may act their dreams with open eyes.",
          "userId": 31,
          "tags": ["french", "magical", "english"],
          "reactions": 8
        },
        {
          "id": 106,
          "title": "Sometimes… Come on, how often exactly,",
          "body":
              "Bert? Can you recall four, five, more such occasions? Or would no human heart have survived two or three? Sometimes (I have nothing to say in reply to your question), while Lolita would be haphazardly preparing her homework,",
          "userId": 23,
          "tags": ["mystery", "english", "french"],
          "reactions": 1
        },
        {
          "id": 107,
          "title": "She would never know, because he would",
          "body":
              "never tell her. Somehow if she’d known the worst parts, she couldn’t have gone on being a haven for him. He was groping for an idea that he couldn’t quite grasp.",
          "userId": 6,
          "tags": ["french", "american", "crime"],
          "reactions": 3
        },
        {
          "id": 108,
          "title": "He ran as he’d never run before",
          "body":
              "hope nor despair. He ran because the world was divided into opposites and his side had already been chosen for him, his only choice being whether or not to play his part with heart and courage.",
          "userId": 24,
          "tags": ["magical", "mystery", "love"],
          "reactions": 8
        },
        {
          "id": 109,
          "title": "How vulgar, this hankering after",
          "body":
              "mmortality, how vain, how false. Composers are merely scribblers of cave paintings. One writes music because winter is eternal and because, if one didn’t, the wolves and blizzards would be at one’s throat all the sooner.",
          "userId": 43,
          "tags": ["mystery", "classic", "history"],
          "reactions": 7
        },
        {
          "id": 110,
          "title": "The embassy’s door was of bulletproof steel",
          "body":
              "lined with a veneer of English oak. You attained it by touching a button in a silent lift. The royal crest, in this air-conditioned stillness, suggested silicone and funeral parlours.",
          "userId": 27,
          "tags": ["classic", "magical", "american"],
          "reactions": 7
        },
        {
          "id": 111,
          "title": "Act, implores the Ghost of Future Regret.",
          "body":
              "Jacob hurries past the tomatoes and catches her up near the gate.‘Miss Abigawa? Miss Aibagawa. I must ask you to forgive me.’She has turned around and has one hand on the gate. ‘Why forgive?",
          "userId": 20,
          "tags": ["crime", "love"],
          "reactions": 4
        },
        {
          "id": 112,
          "title": "The ship rolls and her timbers creak like",
          "body":
              "Men of commerce, sir…’ Nash counts out laudanum drops into the pewter beaker ‘… for the most part, had their consciences cut out at birth. Better an honest drowning than slow death by hypocrisy,",
          "userId": 39,
          "tags": ["fiction", "history", "american"],
          "reactions": 8
        },
        {
          "id": 113,
          "title": "He let the phone slip from his hand and lay",
          "body":
              "crying for a while, silently, shaking the cheap bed. He didn’t know what to do, he didn’t know how to live. Each new thing he encountered in life impelled him in a direction that fully convinced him of its rightness,",
          "userId": 27,
          "tags": ["french", "fiction"],
          "reactions": 6
        },
        {
          "id": 114,
          "title": "When they leave the church, the last light is",
          "body":
              "vanishing into the sky, and a stray snowflake drifts along towards the south. They remount; it has been a long day; his clothes feel heavy on his back.",
          "userId": 18,
          "tags": ["french", "classic", "love"],
          "reactions": 6
        },
        {
          "id": 115,
          "title": "In the days to follow the hacendado would",
          "body":
              "come up to the corral where they’d shaped the manada and he and John Grady would walk among the mares and John Grady would argue their points and the hacendado would muse and walk away a fixed distance.",
          "userId": 9,
          "tags": ["american", "fiction", "history"],
          "reactions": 6
        },
        {
          "id": 116,
          "title": "Imagine the silence now, in that place which",
          "body":
              "is no-place, that anteroom to God where each hour is ten thousand years long. Once you imagined the souls held in a great net, a web spun by God,",
          "userId": 3,
          "tags": ["magical", "crime", "american"],
          "reactions": 7
        },
        {
          "id": 117,
          "title": "Then, perhaps overcome with nostalgia for",
          "body":
              "happier times, he gave me a good kicking. Afterwards I assured him he had all the attributes necessary for a successful artistick career, through unfortunately my mouth was too swollen to list them for Pobjoy’s benefit: mediocrity;",
          "userId": 46,
          "tags": ["history", "mystery", "american"],
          "reactions": 4
        },
        {
          "id": 118,
          "title": "I knew that on the island one was driven",
          "body":
              "back into the past. There was so much space, so much silence, so few meetings that one too easily saw out of the present, and then the past seemed ten times closer than it was.",
          "userId": 48,
          "tags": ["american", "magical", "love"],
          "reactions": 1
        },
        {
          "id": 119,
          "title": "It was but a hurried parting in a common",
          "body":
              "street, yet it was a sacred remembrance to these two common people.  Utilitarian economists, skeletons of schoolmasters, Commissioners of Fact,",
          "userId": 24,
          "tags": ["history", "magical", "english"],
          "reactions": 4
        },
        {
          "id": 120,
          "title": "When a woman withdraws to give birth the",
          "body":
              "sun may be shining but the shutters of her room are closed so she can make her own weather. She is kept in the dark so she can dream. Her dreams drift her far away,",
          "userId": 6,
          "tags": ["crime", "history", "mystery"],
          "reactions": 8
        },
        {
          "id": 121,
          "title": "Revolution and youth are closely allied.",
          "body":
              "can a revolution promise to adults? To some it brings disgrace, to others favor. But even that favor is questionable,",
          "userId": 8,
          "tags": ["english", "history", "crime"],
          "reactions": 2
        },
        {
          "id": 122,
          "title": "The point was we took this shit very",
          "body":
              "seriously. They had taken away our flowers, our summer days, and our bonuses, we were on a wage freeze and a hiring freeze, and people were flying out the door like so many dismantled dummies.",
          "userId": 47,
          "tags": ["history", "english", "crime"],
          "reactions": 6
        },
        {
          "id": 123,
          "title": "The old scholar was watching the noisy",
          "body":
              "young people around him and it suddenly occurred to him that he was the only one in the whole audience who had the privilege of freedom, ",
          "userId": 45,
          "tags": ["mystery", "classic"],
          "reactions": 0
        },
        {
          "id": 124,
          "title": "Later, on my walk, I wondered why I felt I",
          "body":
              "had to be suspicious of ‘normality’. The striking thing about the normal is that there is nothing normal about it:",
          "userId": 19,
          "tags": ["english", "mystery"],
          "reactions": 8
        },
        {
          "id": 125,
          "title": "Looking back on those incidents,",
          "body":
              "always appalled by the memory of his passivity, hard though it was to see what else he could have done. He could have refused to pay for the gravy damage to his room, could have refused to change his shoes,",
          "userId": 7,
          "tags": ["fiction", "classic"],
          "reactions": 4
        },
        {
          "id": 126,
          "title": "I hoped she did not dislike me,",
          "body":
              "under no illusions that she might remember me in any way fondly; that is, if she remembered me at all. I was but one of a procession; I provided extra food, drink, that day some tobacco, beyond that I did not exist for her.",
          "userId": 33,
          "tags": ["english", "classic", "mystery"],
          "reactions": 0
        },
        {
          "id": 127,
          "title": "If I may so ex­press it, I was steeped in Do­ra.",
          "body":
              "was not mere­ly over head and ears in love with her, but I was sat­urat­ed through and through. Enough love might have been wrung out of me, metaphor­ical­ly speak­ing,",
          "userId": 49,
          "tags": ["english", "american"],
          "reactions": 5
        },
        {
          "id": 128,
          "title": "Lyrical poetry is a realm in which any",
          "body":
              "statement immediately becomes truth. Yesterday the poet said life is a vale of tears; today he said life is a land of smiles; and he was right both times. There is no inconsistency.",
          "userId": 4,
          "tags": ["crime", "love", "english"],
          "reactions": 1
        },
        {
          "id": 129,
          "title": "Sometimes, when Chapuys has finished",
          "body":
              "digging up Walter’s bones and making his own life unfamiliar to him, he feels almost impelled to speak in defence of his father, his childhood. But it is no use to justify yourself. It is no good to explain. It is weak to be anecdotal.",
          "userId": 40,
          "tags": ["american", "love", "magical"],
          "reactions": 4
        },
        {
          "id": 130,
          "title": "Always I had acted as if a third person was watching",
          "body":
              "Always I had acted as if a third person was watching and listening and giving me marks for good or bad behaviour – a god like a novelist, to whom I turned, like a character with the power to please, the sensitivity to feel slighted, the ability to adapt himself to whatever he believed the novelist-god wanted.",
          "userId": 45,
          "tags": ["english", "crime", "american"],
          "reactions": 7
        },
        {
          "id": 131,
          "title": "What was I after all?",
          "body":
              "Near enough what Conchis had had me told: nothing but the net sum of countless wrong turnings. I dismissed most of the Freudian jargon of the trial; but all my life I had tried to turn life to fiction, to hold reality away.",
          "userId": 35,
          "tags": ["crime", "english"],
          "reactions": 1
        },
        {
          "id": 132,
          "title": "Now they were in the earth",
          "body":
              "Now they were in the earth to which they had given their lives; and slowly, year by year, the earth would take them.",
          "userId": 46,
          "tags": ["french", "american"],
          "reactions": 8
        },
        {
          "id": 133,
          "title": "He thought of the cost exacted",
          "body":
              "He thought of the cost exacted, year after year, by the soil; and it remained as it had been—a little more barren, perhaps, a little more frugal of increase. Nothing had changed. Their lives had been expended in cheerless labor, their wills broken, their intelligences numbed.",
          "userId": 8,
          "tags": ["classic", "history", "crime"],
          "reactions": 3
        },
        {
          "id": 134,
          "title": "He buried her beside her husband",
          "body":
              "He buried her beside her husband. After the services were over and the few mourners had gone, he stood alone in a cold November wind and looked at the two graves, one open to its burden and the other mounded and covered by a thin fuzz of grass.",
          "userId": 13,
          "tags": ["mystery", "english"],
          "reactions": 1
        },
        {
          "id": 135,
          "title": "I was disconcerted, for I had broken away",
          "body":
              "I was disconcerted, for I had broken away without quite seeing where I was going to. It was not to be shuffled off now, however, and I answered, `The beautiful young lady at Miss Havisham’s, and she’s more beautiful than anybody ever was, and I admire her dreadfully, and I want to be a gentleman on her account.’",
          "userId": 38,
          "tags": ["english", "classic"],
          "reactions": 0
        },
        {
          "id": 136,
          "title": "You must thrive in spite of yourself",
          "body":
              "You must thrive in spite of yourself; and so that you may do it, God takes out your heart of flesh, and gives you a heart of stone.",
          "userId": 14,
          "tags": ["fiction", "french", "mystery"],
          "reactions": 0
        },
        {
          "id": 137,
          "title": "He once thought it himself, that he might die",
          "body":
              "He once thought it himself, that he might die with grief: for his wife, his daughters, his sisters, his father and master the cardinal. But pulse, obdurate, keeps its rhythm. You think you cannot keep breathing, but your ribcage has other ideas, rising and falling, emitting sighs.˝",
          "userId": 13,
          "tags": ["fiction", "history", "crime"],
          "reactions": 6
        },
        {
          "id": 138,
          "title": "On foot, from necessity or in deference",
          "body":
              "On foot, from necessity or in deference to his dismounted commander or associates, his conduct was the same. He would stand like a rock in the open when officers and men alike had taken to cover;",
          "userId": 39,
          "tags": ["fiction", "history", "classic"],
          "reactions": 4
        },
        {
          "id": 139,
          "title": "He stood over the body in the fading light",
          "body":
              "Adjusting the hair and putting the finishing touches to the simple toilet, doing all mechanically, with soulless care. And still through his consciousness ran an undersense of conviction that all was right—that he should have her again as before, and everything explained.",
          "userId": 50,
          "tags": ["classic", "love", "american"],
          "reactions": 8
        },
        {
          "id": 140,
          "title": "A secret always has a strengthening effect",
          "body":
              "A secret always has a strengthening effect upon a newborn friendship, as does the shared impression than an external figure is to blame: the men of the Crown have become united less by their shared beliefs, we observe, than by their shared misgivings.",
          "userId": 46,
          "tags": ["english", "magical", "french"],
          "reactions": 5
        },
        {
          "id": 141,
          "title": "A judgment that is necessarily hampered",
          "body":
              "A judgment that is necessarily hampered, bot only by the scope and limits of his imagination, but by the ever-changing measure of his doubt and self-esteem.",
          "userId": 3,
          "tags": ["love", "english"],
          "reactions": 6
        },
        {
          "id": 142,
          "title": "For although a man is judged by his actions",
          "body":
              "For although a man is judged by his actions, by what he has said and done, a man judges himself by what he is willing to do, by what he might have said, or might have done",
          "userId": 48,
          "tags": ["american", "crime", "magical"],
          "reactions": 4
        },
        {
          "id": 143,
          "title": "Everything failed to subdue me",
          "body":
              "Everything failed to subdue me. Soon everything seemed dull: another sunrise, the lives of heroes, failing love, war, the discoveries people made about each other.",
          "userId": 9,
          "tags": ["french", "american", "history"],
          "reactions": 6
        },
        {
          "id": 144,
          "title": "In the hospital men’s room",
          "body":
              "In the hospital men’s room, as I’m washing my hands, I glance in the mirror. The man I see is not so much me as my father. When did he show up? There is no soap; I rub hand sanitizer into my face–it burns. I nearly drown myself in the sink trying to rinse it off.",
          "userId": 36,
          "tags": ["magical", "history", "fiction"],
          "reactions": 3
        },
        {
          "id": 145,
          "title": "But just as I didn’t want to resent my kids",
          "body":
              "I also didn’t want to find myself too much in love with them. There are parents who don’t like to hear their little girl crying at night, at the vast approaching dark of sleep, and so in their torment think why not feed her a lollipop, and a few years later that kid’s got seven cavities and a pulled tooth.",
          "userId": 43,
          "tags": ["love", "magical", "classic"],
          "reactions": 9
        },
        {
          "id": 146,
          "title": "Christ, he thinks, by my age I ought to know",
          "body":
              "You don’t get on by being original. You don’t get on by being bright. You don’t get on by being strong. You get on by being a subtle crook;",
          "userId": 4,
          "tags": ["fiction", "history", "english"],
          "reactions": 9
        },
        {
          "id": 147,
          "title": "They look so fine, and young",
          "body":
              "They look so fine, and young, and wrapped up in each other. Love is so fresh and clean at that age. Don’t you think?",
          "userId": 4,
          "tags": ["french", "classic", "history"],
          "reactions": 7
        },
        {
          "id": 148,
          "title": "Your only chance of survival",
          "body":
              "Your only chance of survival, if you are sincerely smitten, lies in hiding this fact from the woman you love, of feigning a casual detachment under all circumstances.",
          "userId": 41,
          "tags": ["crime", "classic", "love"],
          "reactions": 8
        },
        {
          "id": 149,
          "title": "During the first part of your life",
          "body":
              "During the first part of your life, you only become aware of happiness once you have lost it. Then an age comes, a second one, in which you already know, at the moment when you begin to experience true happiness.",
          "userId": 18,
          "tags": ["love", "american", "classic"],
          "reactions": 1
        },
        {
          "id": 150,
          "title": "Were you in love with her?",
          "body":
              "The question is in a way meaningless, she knows, but one must ask. Love in such situations is rarely real. Sex is the engine, exalting and ruining people, sex and frustration. Love is what people believe is worth the path of devastation.",
          "userId": 15,
          "tags": ["fiction", "mystery", "english"],
          "reactions": 7
        }
      ],
      "total": 150,
      "skip": 0,
      "limit": 150
    };

    return (json['posts'] as List)
        .cast<_ResponseData>()
        .map(Post.fromJson)
        .toList();
  }
}
