part of 'mocked_api_client.dart';

typedef _ResponseData = Map<String, Object?>;

class _MockedApiClientRepository {
  _MockedApiClientRepository._();

  static List<Product> getProducts() {
    final dynamic json = {
      "products": [
        {
          "id": 1,
          "title": "Essence Mascara Lash Princess",
          "description":
              "The Essence Mascara Lash Princess is a popular mascara known for its volumizing and lengthening effects. Achieve dramatic lashes with this long-lasting and cruelty-free formula.",
          "category": "beauty",
          "price": 9.99,
          "discountPercentage": 7.17,
          "rating": 4.94,
          "stock": 5,
          "tags": ["beauty", "mascara"],
          "brand": "Essence",
          "sku": "RCH45Q1A",
          "weight": 2,
          "dimensions": {"width": 23.17, "height": 14.43, "depth": 28.01},
          "warrantyInformation": "1 month warranty",
          "shippingInformation": "Ships in 1 month",
          "availabilityStatus": "Low Stock",
          "reviews": [
            {
              "rating": 2,
              "comment": "Very unhappy with my purchase!",
              "date": "2024-05-23T08:56:21.618Z",
              "reviewerName": "John Doe",
              "reviewerEmail": "john.doe@x.dummyjson.com"
            },
            {
              "rating": 2,
              "comment": "Not as described!",
              "date": "2024-05-23T08:56:21.618Z",
              "reviewerName": "Nolan Gonzalez",
              "reviewerEmail": "nolan.gonzalez@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Very satisfied!",
              "date": "2024-05-23T08:56:21.618Z",
              "reviewerName": "Scarlett Wright",
              "reviewerEmail": "scarlett.wright@x.dummyjson.com"
            }
          ],
          "returnPolicy": "30 days return policy",
          "minimumOrderQuantity": 24,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.618Z",
            "updatedAt": "2024-05-23T08:56:21.618Z",
            "barcode": "9164035109868",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/beauty/Essence%20Mascara%20Lash%20Princess/thumbnail.png"
        },
        {
          "id": 2,
          "title": "Eyeshadow Palette with Mirror",
          "description":
              "The Eyeshadow Palette with Mirror offers a versatile range of eyeshadow shades for creating stunning eye looks. With a built-in mirror, it's convenient for on-the-go makeup application.",
          "category": "beauty",
          "price": 19.99,
          "discountPercentage": 5.5,
          "rating": 3.28,
          "stock": 44,
          "tags": ["beauty", "eyeshadow"],
          "brand": "Glamour Beauty",
          "sku": "MVCFH27F",
          "weight": 3,
          "dimensions": {"width": 12.42, "height": 8.63, "depth": 29.13},
          "warrantyInformation": "1 year warranty",
          "shippingInformation": "Ships in 2 weeks",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 4,
              "comment": "Very satisfied!",
              "date": "2024-05-23T08:56:21.618Z",
              "reviewerName": "Liam Garcia",
              "reviewerEmail": "liam.garcia@x.dummyjson.com"
            },
            {
              "rating": 1,
              "comment": "Very disappointed!",
              "date": "2024-05-23T08:56:21.618Z",
              "reviewerName": "Nora Russell",
              "reviewerEmail": "nora.russell@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Highly impressed!",
              "date": "2024-05-23T08:56:21.618Z",
              "reviewerName": "Elena Baker",
              "reviewerEmail": "elena.baker@x.dummyjson.com"
            }
          ],
          "returnPolicy": "30 days return policy",
          "minimumOrderQuantity": 32,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.618Z",
            "updatedAt": "2024-05-23T08:56:21.618Z",
            "barcode": "2817839095220",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/beauty/Eyeshadow%20Palette%20with%20Mirror/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/beauty/Eyeshadow%20Palette%20with%20Mirror/thumbnail.png"
        },
        {
          "id": 3,
          "title": "Powder Canister",
          "description":
              "The Powder Canister is a finely milled setting powder designed to set makeup and control shine. With a lightweight and translucent formula, it provides a smooth and matte finish.",
          "category": "beauty",
          "price": 14.99,
          "discountPercentage": 18.14,
          "rating": 3.82,
          "stock": 59,
          "tags": ["beauty", "face powder"],
          "brand": "Velvet Touch",
          "sku": "9EN8WLT2",
          "weight": 8,
          "dimensions": {"width": 24.16, "height": 10.7, "depth": 11.07},
          "warrantyInformation": "2 year warranty",
          "shippingInformation": "Ships in 1-2 business days",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 5,
              "comment": "Very happy with my purchase!",
              "date": "2024-05-23T08:56:21.618Z",
              "reviewerName": "Ethan Thompson",
              "reviewerEmail": "ethan.thompson@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Great value for money!",
              "date": "2024-05-23T08:56:21.618Z",
              "reviewerName": "Levi Hicks",
              "reviewerEmail": "levi.hicks@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Highly impressed!",
              "date": "2024-05-23T08:56:21.618Z",
              "reviewerName": "Hazel Gardner",
              "reviewerEmail": "hazel.gardner@x.dummyjson.com"
            }
          ],
          "returnPolicy": "60 days return policy",
          "minimumOrderQuantity": 25,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.618Z",
            "updatedAt": "2024-05-23T08:56:21.618Z",
            "barcode": "0516267971277",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/beauty/Powder%20Canister/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/beauty/Powder%20Canister/thumbnail.png"
        },
        {
          "id": 4,
          "title": "Red Lipstick",
          "description":
              "The Red Lipstick is a classic and bold choice for adding a pop of color to your lips. With a creamy and pigmented formula, it provides a vibrant and long-lasting finish.",
          "category": "beauty",
          "price": 12.99,
          "discountPercentage": 19.03,
          "rating": 2.51,
          "stock": 68,
          "tags": ["beauty", "lipstick"],
          "brand": "Chic Cosmetics",
          "sku": "O5IF1NTA",
          "weight": 5,
          "dimensions": {"width": 14.37, "height": 13.94, "depth": 14.6},
          "warrantyInformation": "Lifetime warranty",
          "shippingInformation": "Ships in 2 weeks",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 5,
              "comment": "Great product!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Leo Rivera",
              "reviewerEmail": "leo.rivera@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Very pleased!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Oscar Powers",
              "reviewerEmail": "oscar.powers@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Very pleased!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Carter Rivera",
              "reviewerEmail": "carter.rivera@x.dummyjson.com"
            }
          ],
          "returnPolicy": "90 days return policy",
          "minimumOrderQuantity": 6,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.619Z",
            "updatedAt": "2024-05-23T08:56:21.619Z",
            "barcode": "9444582199406",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/beauty/Red%20Lipstick/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/beauty/Red%20Lipstick/thumbnail.png"
        },
        {
          "id": 5,
          "title": "Red Nail Polish",
          "description":
              "The Red Nail Polish offers a rich and glossy red hue for vibrant and polished nails. With a quick-drying formula, it provides a salon-quality finish at home.",
          "category": "beauty",
          "price": 8.99,
          "discountPercentage": 2.46,
          "rating": 3.91,
          "stock": 71,
          "tags": ["beauty", "nail polish"],
          "brand": "Nail Couture",
          "sku": "YUIIIP4W",
          "weight": 9,
          "dimensions": {"width": 8.11, "height": 10.89, "depth": 29.06},
          "warrantyInformation": "1 year warranty",
          "shippingInformation": "Ships in 1 week",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 5,
              "comment": "Very pleased!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Leo Rivera",
              "reviewerEmail": "leo.rivera@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Great product!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Evan Reed",
              "reviewerEmail": "evan.reed@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Highly recommended!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Evelyn Sanchez",
              "reviewerEmail": "evelyn.sanchez@x.dummyjson.com"
            }
          ],
          "returnPolicy": "No return policy",
          "minimumOrderQuantity": 46,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.619Z",
            "updatedAt": "2024-05-23T08:56:21.619Z",
            "barcode": "3212847902461",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/beauty/Red%20Nail%20Polish/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/beauty/Red%20Nail%20Polish/thumbnail.png"
        },
        {
          "id": 6,
          "title": "Calvin Klein CK One",
          "description":
              "CK One by Calvin Klein is a classic unisex fragrance, known for its fresh and clean scent. It's a versatile fragrance suitable for everyday wear.",
          "category": "fragrances",
          "price": 49.99,
          "discountPercentage": 0.32,
          "rating": 4.85,
          "stock": 17,
          "tags": ["fragrances", "perfumes"],
          "brand": "Calvin Klein",
          "sku": "DZM2JQZE",
          "weight": 5,
          "dimensions": {"width": 11.53, "height": 14.44, "depth": 6.81},
          "warrantyInformation": "5 year warranty",
          "shippingInformation": "Ships overnight",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 5,
              "comment": "Great value for money!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Sophia Brown",
              "reviewerEmail": "sophia.brown@x.dummyjson.com"
            },
            {
              "rating": 3,
              "comment": "Very disappointed!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Madison Collins",
              "reviewerEmail": "madison.collins@x.dummyjson.com"
            },
            {
              "rating": 1,
              "comment": "Poor quality!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Maya Reed",
              "reviewerEmail": "maya.reed@x.dummyjson.com"
            }
          ],
          "returnPolicy": "No return policy",
          "minimumOrderQuantity": 20,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.619Z",
            "updatedAt": "2024-05-23T08:56:21.619Z",
            "barcode": "2210136215089",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/1.png",
            "https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/2.png",
            "https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/3.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/fragrances/Calvin%20Klein%20CK%20One/thumbnail.png"
        },
        {
          "id": 7,
          "title": "Chanel Coco Noir Eau De",
          "description":
              "Coco Noir by Chanel is an elegant and mysterious fragrance, featuring notes of grapefruit, rose, and sandalwood. Perfect for evening occasions.",
          "category": "fragrances",
          "price": 129.99,
          "discountPercentage": 18.64,
          "rating": 2.76,
          "stock": 41,
          "tags": ["fragrances", "perfumes"],
          "brand": "Chanel",
          "sku": "K71HBCGS",
          "weight": 4,
          "dimensions": {"width": 21.27, "height": 28, "depth": 11.89},
          "warrantyInformation": "1 week warranty",
          "shippingInformation": "Ships in 1 month",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 1,
              "comment": "Disappointing product!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Lincoln Kelly",
              "reviewerEmail": "lincoln.kelly@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Great product!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Lincoln Kelly",
              "reviewerEmail": "lincoln.kelly@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Excellent quality!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Lucas Allen",
              "reviewerEmail": "lucas.allen@x.dummyjson.com"
            }
          ],
          "returnPolicy": "60 days return policy",
          "minimumOrderQuantity": 5,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.619Z",
            "updatedAt": "2024-05-23T08:56:21.619Z",
            "barcode": "1435582999795",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/1.png",
            "https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/2.png",
            "https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/3.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/fragrances/Chanel%20Coco%20Noir%20Eau%20De/thumbnail.png"
        },
        {
          "id": 8,
          "title": "Dior J'adore",
          "description":
              "J'adore by Dior is a luxurious and floral fragrance, known for its blend of ylang-ylang, rose, and jasmine. It embodies femininity and sophistication.",
          "category": "fragrances",
          "price": 89.99,
          "discountPercentage": 17.44,
          "rating": 3.31,
          "stock": 91,
          "tags": ["fragrances", "perfumes"],
          "brand": "Dior",
          "sku": "E70NB03B",
          "weight": 10,
          "dimensions": {"width": 21.51, "height": 7, "depth": 26.51},
          "warrantyInformation": "Lifetime warranty",
          "shippingInformation": "Ships in 2 weeks",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 5,
              "comment": "Fast shipping!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Zoe Nicholson",
              "reviewerEmail": "zoe.nicholson@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Excellent quality!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Addison Wright",
              "reviewerEmail": "addison.wright@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Would buy again!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Clara Berry",
              "reviewerEmail": "clara.berry@x.dummyjson.com"
            }
          ],
          "returnPolicy": "7 days return policy",
          "minimumOrderQuantity": 8,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.619Z",
            "updatedAt": "2024-05-23T08:56:21.619Z",
            "barcode": "0887083199279",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/fragrances/Dior%20J'adore/1.png",
            "https://cdn.dummyjson.com/products/images/fragrances/Dior%20J'adore/2.png",
            "https://cdn.dummyjson.com/products/images/fragrances/Dior%20J'adore/3.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/fragrances/Dior%20J'adore/thumbnail.png"
        },
        {
          "id": 9,
          "title": "Dolce Shine Eau de",
          "description":
              "Dolce Shine by Dolce & Gabbana is a vibrant and fruity fragrance, featuring notes of mango, jasmine, and blonde woods. It's a joyful and youthful scent.",
          "category": "fragrances",
          "price": 69.99,
          "discountPercentage": 11.47,
          "rating": 2.68,
          "stock": 3,
          "tags": ["fragrances", "perfumes"],
          "brand": "Dolce & Gabbana",
          "sku": "1NBFK980",
          "weight": 5,
          "dimensions": {"width": 17, "height": 24.57, "depth": 13.3},
          "warrantyInformation": "5 year warranty",
          "shippingInformation": "Ships in 1-2 business days",
          "availabilityStatus": "Low Stock",
          "reviews": [
            {
              "rating": 4,
              "comment": "Very satisfied!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Xavier Wright",
              "reviewerEmail": "xavier.wright@x.dummyjson.com"
            },
            {
              "rating": 1,
              "comment": "Poor quality!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Mila Hernandez",
              "reviewerEmail": "mila.hernandez@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Very happy with my purchase!",
              "date": "2024-05-23T08:56:21.619Z",
              "reviewerName": "Sophia Brown",
              "reviewerEmail": "sophia.brown@x.dummyjson.com"
            }
          ],
          "returnPolicy": "30 days return policy",
          "minimumOrderQuantity": 9,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.619Z",
            "updatedAt": "2024-05-23T08:56:21.619Z",
            "barcode": "1939383392674",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/fragrances/Dolce%20Shine%20Eau%20de/1.png",
            "https://cdn.dummyjson.com/products/images/fragrances/Dolce%20Shine%20Eau%20de/2.png",
            "https://cdn.dummyjson.com/products/images/fragrances/Dolce%20Shine%20Eau%20de/3.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/fragrances/Dolce%20Shine%20Eau%20de/thumbnail.png"
        },
        {
          "id": 10,
          "title": "Gucci Bloom Eau de",
          "description":
              "Gucci Bloom by Gucci is a floral and captivating fragrance, with notes of tuberose, jasmine, and Rangoon creeper. It's a modern and romantic scent.",
          "category": "fragrances",
          "price": 79.99,
          "discountPercentage": 8.9,
          "rating": 2.69,
          "stock": 93,
          "tags": ["fragrances", "perfumes"],
          "brand": "Gucci",
          "sku": "FFKZ6HOF",
          "weight": 10,
          "dimensions": {"width": 22.28, "height": 17.81, "depth": 27.18},
          "warrantyInformation": "No warranty",
          "shippingInformation": "Ships in 2 weeks",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 5,
              "comment": "Great value for money!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Aria Parker",
              "reviewerEmail": "aria.parker@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Excellent quality!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Natalie Harris",
              "reviewerEmail": "natalie.harris@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Fast shipping!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Ava Harris",
              "reviewerEmail": "ava.harris@x.dummyjson.com"
            }
          ],
          "returnPolicy": "No return policy",
          "minimumOrderQuantity": 10,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "8232190382069",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/fragrances/Gucci%20Bloom%20Eau%20de/1.png",
            "https://cdn.dummyjson.com/products/images/fragrances/Gucci%20Bloom%20Eau%20de/2.png",
            "https://cdn.dummyjson.com/products/images/fragrances/Gucci%20Bloom%20Eau%20de/3.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/fragrances/Gucci%20Bloom%20Eau%20de/thumbnail.png"
        },
        {
          "id": 11,
          "title": "Annibale Colombo Bed",
          "description":
              "The Annibale Colombo Bed is a luxurious and elegant bed frame, crafted with high-quality materials for a comfortable and stylish bedroom.",
          "category": "furniture",
          "price": 1899.99,
          "discountPercentage": 0.29,
          "rating": 4.14,
          "stock": 47,
          "tags": ["furniture", "beds"],
          "brand": "Annibale Colombo",
          "sku": "4KMDTZWF",
          "weight": 3,
          "dimensions": {"width": 28.75, "height": 26.88, "depth": 24.47},
          "warrantyInformation": "2 year warranty",
          "shippingInformation": "Ships overnight",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 4,
              "comment": "Great value for money!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Julian Newton",
              "reviewerEmail": "julian.newton@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Would buy again!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Madison Collins",
              "reviewerEmail": "madison.collins@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Would buy again!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Clara Berry",
              "reviewerEmail": "clara.berry@x.dummyjson.com"
            }
          ],
          "returnPolicy": "7 days return policy",
          "minimumOrderQuantity": 1,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "7113807059215",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Bed/1.png",
            "https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Bed/2.png",
            "https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Bed/3.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Bed/thumbnail.png"
        },
        {
          "id": 12,
          "title": "Annibale Colombo Sofa",
          "description":
              "The Annibale Colombo Sofa is a sophisticated and comfortable seating option, featuring exquisite design and premium upholstery for your living room.",
          "category": "furniture",
          "price": 2499.99,
          "discountPercentage": 18.54,
          "rating": 3.08,
          "stock": 16,
          "tags": ["furniture", "sofas"],
          "brand": "Annibale Colombo",
          "sku": "LUU95CQP",
          "weight": 3,
          "dimensions": {"width": 20.97, "height": 19.11, "depth": 25.81},
          "warrantyInformation": "1 month warranty",
          "shippingInformation": "Ships overnight",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 5,
              "comment": "Very satisfied!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Tyler Davis",
              "reviewerEmail": "tyler.davis@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Excellent quality!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Hannah Robinson",
              "reviewerEmail": "hannah.robinson@x.dummyjson.com"
            },
            {
              "rating": 3,
              "comment": "Waste of money!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Madison Collins",
              "reviewerEmail": "madison.collins@x.dummyjson.com"
            }
          ],
          "returnPolicy": "7 days return policy",
          "minimumOrderQuantity": 1,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "0426785817074",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Sofa/1.png",
            "https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Sofa/2.png",
            "https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Sofa/3.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/furniture/Annibale%20Colombo%20Sofa/thumbnail.png"
        },
        {
          "id": 13,
          "title": "Bedside Table African Cherry",
          "description":
              "The Bedside Table in African Cherry is a stylish and functional addition to your bedroom, providing convenient storage space and a touch of elegance.",
          "category": "furniture",
          "price": 299.99,
          "discountPercentage": 9.58,
          "rating": 4.48,
          "stock": 16,
          "tags": ["furniture", "bedside tables"],
          "brand": "Furniture Co.",
          "sku": "OWPLTZYX",
          "weight": 10,
          "dimensions": {"width": 25.43, "height": 20.2, "depth": 24.95},
          "warrantyInformation": "6 months warranty",
          "shippingInformation": "Ships in 1-2 business days",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 5,
              "comment": "Very happy with my purchase!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "John Doe",
              "reviewerEmail": "john.doe@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Highly recommended!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Avery Carter",
              "reviewerEmail": "avery.carter@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Very pleased!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Evelyn Sanchez",
              "reviewerEmail": "evelyn.sanchez@x.dummyjson.com"
            }
          ],
          "returnPolicy": "No return policy",
          "minimumOrderQuantity": 5,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "2913244159666",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/furniture/Bedside%20Table%20African%20Cherry/1.png",
            "https://cdn.dummyjson.com/products/images/furniture/Bedside%20Table%20African%20Cherry/2.png",
            "https://cdn.dummyjson.com/products/images/furniture/Bedside%20Table%20African%20Cherry/3.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/furniture/Bedside%20Table%20African%20Cherry/thumbnail.png"
        },
        {
          "id": 14,
          "title": "Knoll Saarinen Executive Conference Chair",
          "description":
              "The Knoll Saarinen Executive Conference Chair is a modern and ergonomic chair, perfect for your office or conference room with its timeless design.",
          "category": "furniture",
          "price": 499.99,
          "discountPercentage": 15.23,
          "rating": 4.11,
          "stock": 47,
          "tags": ["furniture", "office chairs"],
          "brand": "Knoll",
          "sku": "RKHVJ4FE",
          "weight": 3,
          "dimensions": {"width": 16.59, "height": 21.46, "depth": 29.07},
          "warrantyInformation": "Lifetime warranty",
          "shippingInformation": "Ships in 3-5 business days",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 4,
              "comment": "Very happy with my purchase!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Leah Gutierrez",
              "reviewerEmail": "leah.gutierrez@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Would buy again!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Nolan Gonzalez",
              "reviewerEmail": "nolan.gonzalez@x.dummyjson.com"
            },
            {
              "rating": 2,
              "comment": "Waste of money!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Stella Morris",
              "reviewerEmail": "stella.morris@x.dummyjson.com"
            }
          ],
          "returnPolicy": "30 days return policy",
          "minimumOrderQuantity": 5,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "0726316339746",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/furniture/Knoll%20Saarinen%20Executive%20Conference%20Chair/1.png",
            "https://cdn.dummyjson.com/products/images/furniture/Knoll%20Saarinen%20Executive%20Conference%20Chair/2.png",
            "https://cdn.dummyjson.com/products/images/furniture/Knoll%20Saarinen%20Executive%20Conference%20Chair/3.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/furniture/Knoll%20Saarinen%20Executive%20Conference%20Chair/thumbnail.png"
        },
        {
          "id": 15,
          "title": "Wooden Bathroom Sink With Mirror",
          "description":
              "The Wooden Bathroom Sink with Mirror is a unique and stylish addition to your bathroom, featuring a wooden sink countertop and a matching mirror.",
          "category": "furniture",
          "price": 799.99,
          "discountPercentage": 11.22,
          "rating": 3.26,
          "stock": 95,
          "tags": ["furniture", "bathroom"],
          "brand": "Bath Trends",
          "sku": "7OLTIEVO",
          "weight": 6,
          "dimensions": {"width": 7.32, "height": 22.64, "depth": 12.37},
          "warrantyInformation": "6 months warranty",
          "shippingInformation": "Ships in 3-5 business days",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 5,
              "comment": "Highly recommended!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Charlotte Lopez",
              "reviewerEmail": "charlotte.lopez@x.dummyjson.com"
            },
            {
              "rating": 1,
              "comment": "Would not recommend!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "William Gonzalez",
              "reviewerEmail": "william.gonzalez@x.dummyjson.com"
            },
            {
              "rating": 2,
              "comment": "Not worth the price!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Ava Harrison",
              "reviewerEmail": "ava.harrison@x.dummyjson.com"
            }
          ],
          "returnPolicy": "7 days return policy",
          "minimumOrderQuantity": 1,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "7839797529453",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/furniture/Wooden%20Bathroom%20Sink%20With%20Mirror/1.png",
            "https://cdn.dummyjson.com/products/images/furniture/Wooden%20Bathroom%20Sink%20With%20Mirror/2.png",
            "https://cdn.dummyjson.com/products/images/furniture/Wooden%20Bathroom%20Sink%20With%20Mirror/3.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/furniture/Wooden%20Bathroom%20Sink%20With%20Mirror/thumbnail.png"
        },
        {
          "id": 16,
          "title": "Apple",
          "description":
              "Fresh and crisp apples, perfect for snacking or incorporating into various recipes.",
          "category": "groceries",
          "price": 1.99,
          "discountPercentage": 1.97,
          "rating": 2.96,
          "stock": 9,
          "tags": ["fruits"],
          "sku": "QTROUV79",
          "weight": 8,
          "dimensions": {"width": 8.29, "height": 5.58, "depth": 12.41},
          "warrantyInformation": "2 year warranty",
          "shippingInformation": "Ships in 2 weeks",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 4,
              "comment": "Great product!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Logan Lee",
              "reviewerEmail": "logan.lee@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Great product!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Elena Long",
              "reviewerEmail": "elena.long@x.dummyjson.com"
            },
            {
              "rating": 1,
              "comment": "Not as described!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Grayson Coleman",
              "reviewerEmail": "grayson.coleman@x.dummyjson.com"
            }
          ],
          "returnPolicy": "60 days return policy",
          "minimumOrderQuantity": 44,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "2517819903837",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/groceries/Apple/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/groceries/Apple/thumbnail.png"
        },
        {
          "id": 17,
          "title": "Beef Steak",
          "description":
              "High-quality beef steak, great for grilling or cooking to your preferred level of doneness.",
          "category": "groceries",
          "price": 12.99,
          "discountPercentage": 17.99,
          "rating": 2.83,
          "stock": 96,
          "tags": ["meat"],
          "sku": "BWWA2MSO",
          "weight": 9,
          "dimensions": {"width": 23.35, "height": 13.48, "depth": 26.4},
          "warrantyInformation": "1 month warranty",
          "shippingInformation": "Ships overnight",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 4,
              "comment": "Very pleased!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Ethan Martinez",
              "reviewerEmail": "ethan.martinez@x.dummyjson.com"
            },
            {
              "rating": 3,
              "comment": "Disappointing product!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Owen Fisher",
              "reviewerEmail": "owen.fisher@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Very happy with my purchase!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Scarlett Wright",
              "reviewerEmail": "scarlett.wright@x.dummyjson.com"
            }
          ],
          "returnPolicy": "90 days return policy",
          "minimumOrderQuantity": 21,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "8335515097879",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/groceries/Beef%20Steak/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/groceries/Beef%20Steak/thumbnail.png"
        },
        {
          "id": 18,
          "title": "Cat Food",
          "description":
              "Nutritious cat food formulated to meet the dietary needs of your feline friend.",
          "category": "groceries",
          "price": 8.99,
          "discountPercentage": 9.57,
          "rating": 2.88,
          "stock": 13,
          "tags": ["pet supplies", "cat food"],
          "sku": "C3F8QN6O",
          "weight": 9,
          "dimensions": {"width": 15.4, "height": 13.97, "depth": 25.13},
          "warrantyInformation": "3 months warranty",
          "shippingInformation": "Ships in 1-2 business days",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 5,
              "comment": "Very pleased!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Mateo Bennett",
              "reviewerEmail": "mateo.bennett@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Very pleased!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Aurora Barnes",
              "reviewerEmail": "aurora.barnes@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Great value for money!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Ellie Stewart",
              "reviewerEmail": "ellie.stewart@x.dummyjson.com"
            }
          ],
          "returnPolicy": "7 days return policy",
          "minimumOrderQuantity": 48,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "5503491330693",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/groceries/Cat%20Food/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/groceries/Cat%20Food/thumbnail.png"
        },
        {
          "id": 19,
          "title": "Chicken Meat",
          "description":
              "Fresh and tender chicken meat, suitable for various culinary preparations.",
          "category": "groceries",
          "price": 9.99,
          "discountPercentage": 10.46,
          "rating": 4.61,
          "stock": 69,
          "tags": ["meat"],
          "sku": "G5YEHW7B",
          "weight": 7,
          "dimensions": {"width": 15.96, "height": 29.24, "depth": 26.25},
          "warrantyInformation": "Lifetime warranty",
          "shippingInformation": "Ships in 1 month",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 5,
              "comment": "Very satisfied!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Sophia Jones",
              "reviewerEmail": "sophia.jones@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Great value for money!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Maya Reed",
              "reviewerEmail": "maya.reed@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Highly recommended!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Harper Turner",
              "reviewerEmail": "harper.turner@x.dummyjson.com"
            }
          ],
          "returnPolicy": "7 days return policy",
          "minimumOrderQuantity": 46,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "0966223559510",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/groceries/Chicken%20Meat/1.png",
            "https://cdn.dummyjson.com/products/images/groceries/Chicken%20Meat/2.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/groceries/Chicken%20Meat/thumbnail.png"
        },
        {
          "id": 20,
          "title": "Cooking Oil",
          "description":
              "Versatile cooking oil suitable for frying, sautéing, and various culinary applications.",
          "category": "groceries",
          "price": 4.99,
          "discountPercentage": 18.89,
          "rating": 4.01,
          "stock": 22,
          "tags": ["cooking essentials"],
          "sku": "Q6ZP1UY8",
          "weight": 8,
          "dimensions": {"width": 8.18, "height": 27.45, "depth": 27.88},
          "warrantyInformation": "Lifetime warranty",
          "shippingInformation": "Ships in 1 month",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 5,
              "comment": "Would buy again!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Mason Parker",
              "reviewerEmail": "mason.parker@x.dummyjson.com"
            },
            {
              "rating": 3,
              "comment": "Poor quality!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Jonathan Pierce",
              "reviewerEmail": "jonathan.pierce@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Would buy again!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Alexander Hernandez",
              "reviewerEmail": "alexander.hernandez@x.dummyjson.com"
            }
          ],
          "returnPolicy": "60 days return policy",
          "minimumOrderQuantity": 2,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "6707669443381",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/groceries/Cooking%20Oil/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/groceries/Cooking%20Oil/thumbnail.png"
        },
        {
          "id": 21,
          "title": "Cucumber",
          "description":
              "Crisp and hydrating cucumbers, ideal for salads, snacks, or as a refreshing side.",
          "category": "groceries",
          "price": 1.49,
          "discountPercentage": 11.44,
          "rating": 4.71,
          "stock": 22,
          "tags": ["vegetables"],
          "sku": "6KGF2K6Z",
          "weight": 9,
          "dimensions": {"width": 11.04, "height": 20.5, "depth": 8.18},
          "warrantyInformation": "5 year warranty",
          "shippingInformation": "Ships overnight",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 4,
              "comment": "Very satisfied!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Elijah Hill",
              "reviewerEmail": "elijah.hill@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Fast shipping!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Liam Garcia",
              "reviewerEmail": "liam.garcia@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Excellent quality!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Ella Cook",
              "reviewerEmail": "ella.cook@x.dummyjson.com"
            }
          ],
          "returnPolicy": "30 days return policy",
          "minimumOrderQuantity": 7,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "2597004869708",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/groceries/Cucumber/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/groceries/Cucumber/thumbnail.png"
        },
        {
          "id": 22,
          "title": "Dog Food",
          "description":
              "Specially formulated dog food designed to provide essential nutrients for your canine companion.",
          "category": "groceries",
          "price": 10.99,
          "discountPercentage": 18.15,
          "rating": 2.74,
          "stock": 40,
          "tags": ["pet supplies", "dog food"],
          "sku": "A6QRCH37",
          "weight": 2,
          "dimensions": {"width": 29.39, "height": 29.77, "depth": 20.54},
          "warrantyInformation": "1 year warranty",
          "shippingInformation": "Ships in 1 month",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 5,
              "comment": "Highly impressed!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Leo Rivera",
              "reviewerEmail": "leo.rivera@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Highly recommended!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Alexander Jones",
              "reviewerEmail": "alexander.jones@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Would buy again!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Addison Wright",
              "reviewerEmail": "addison.wright@x.dummyjson.com"
            }
          ],
          "returnPolicy": "90 days return policy",
          "minimumOrderQuantity": 29,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "7957222289508",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/groceries/Dog%20Food/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/groceries/Dog%20Food/thumbnail.png"
        },
        {
          "id": 23,
          "title": "Eggs",
          "description":
              "Fresh eggs, a versatile ingredient for baking, cooking, or breakfast.",
          "category": "groceries",
          "price": 2.99,
          "discountPercentage": 5.8,
          "rating": 4.46,
          "stock": 10,
          "tags": ["dairy"],
          "sku": "YA617RI7",
          "weight": 4,
          "dimensions": {"width": 12.3, "height": 10.99, "depth": 15.53},
          "warrantyInformation": "3 year warranty",
          "shippingInformation": "Ships overnight",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 2,
              "comment": "Very unhappy with my purchase!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Mateo Perez",
              "reviewerEmail": "mateo.perez@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Very happy with my purchase!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Cameron Perez",
              "reviewerEmail": "cameron.perez@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Very happy with my purchase!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Aurora Barnes",
              "reviewerEmail": "aurora.barnes@x.dummyjson.com"
            }
          ],
          "returnPolicy": "30 days return policy",
          "minimumOrderQuantity": 43,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "7095702028776",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/groceries/Eggs/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/groceries/Eggs/thumbnail.png"
        },
        {
          "id": 24,
          "title": "Fish Steak",
          "description":
              "Quality fish steak, suitable for grilling, baking, or pan-searing.",
          "category": "groceries",
          "price": 14.99,
          "discountPercentage": 7,
          "rating": 4.83,
          "stock": 99,
          "tags": ["seafood"],
          "sku": "XNIH1MTA",
          "weight": 8,
          "dimensions": {"width": 20.14, "height": 8.4, "depth": 10.01},
          "warrantyInformation": "1 year warranty",
          "shippingInformation": "Ships in 1 month",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 5,
              "comment": "Great value for money!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Michael Johnson",
              "reviewerEmail": "michael.johnson@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Would buy again!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Julian Newton",
              "reviewerEmail": "julian.newton@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Excellent quality!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Lila Hudson",
              "reviewerEmail": "lila.hudson@x.dummyjson.com"
            }
          ],
          "returnPolicy": "30 days return policy",
          "minimumOrderQuantity": 49,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "4250692197342",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/groceries/Fish%20Steak/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/groceries/Fish%20Steak/thumbnail.png"
        },
        {
          "id": 25,
          "title": "Green Bell Pepper",
          "description":
              "Fresh and vibrant green bell pepper, perfect for adding color and flavor to your dishes.",
          "category": "groceries",
          "price": 1.29,
          "discountPercentage": 15.5,
          "rating": 4.28,
          "stock": 89,
          "tags": ["vegetables"],
          "sku": "HU7S7VQ0",
          "weight": 7,
          "dimensions": {"width": 7.32, "height": 14.31, "depth": 21.38},
          "warrantyInformation": "5 year warranty",
          "shippingInformation": "Ships overnight",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 4,
              "comment": "Excellent quality!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Maya Reed",
              "reviewerEmail": "maya.reed@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Would buy again!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Madison Collins",
              "reviewerEmail": "madison.collins@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Would buy again!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Ethan Thompson",
              "reviewerEmail": "ethan.thompson@x.dummyjson.com"
            }
          ],
          "returnPolicy": "30 days return policy",
          "minimumOrderQuantity": 1,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "7583442707568",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/groceries/Green%20Bell%20Pepper/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/groceries/Green%20Bell%20Pepper/thumbnail.png"
        },
        {
          "id": 26,
          "title": "Green Chili Pepper",
          "description":
              "Spicy green chili pepper, ideal for adding heat to your favorite recipes.",
          "category": "groceries",
          "price": 0.99,
          "discountPercentage": 18.51,
          "rating": 4.43,
          "stock": 8,
          "tags": ["vegetables"],
          "sku": "Y4RM3JCB",
          "weight": 2,
          "dimensions": {"width": 18.67, "height": 21.17, "depth": 25.26},
          "warrantyInformation": "No warranty",
          "shippingInformation": "Ships in 1-2 business days",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 2,
              "comment": "Disappointing product!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Mateo Bennett",
              "reviewerEmail": "mateo.bennett@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Very pleased!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Natalie Price",
              "reviewerEmail": "natalie.price@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Very satisfied!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Avery Barnes",
              "reviewerEmail": "avery.barnes@x.dummyjson.com"
            }
          ],
          "returnPolicy": "30 days return policy",
          "minimumOrderQuantity": 43,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "8400326844874",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/groceries/Green%20Chili%20Pepper/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/groceries/Green%20Chili%20Pepper/thumbnail.png"
        },
        {
          "id": 27,
          "title": "Honey Jar",
          "description":
              "Pure and natural honey in a convenient jar, perfect for sweetening beverages or drizzling over food.",
          "category": "groceries",
          "price": 6.99,
          "discountPercentage": 1.91,
          "rating": 3.5,
          "stock": 25,
          "tags": ["condiments"],
          "sku": "BTBNIIOU",
          "weight": 9,
          "dimensions": {"width": 26.53, "height": 27.11, "depth": 6.63},
          "warrantyInformation": "2 year warranty",
          "shippingInformation": "Ships overnight",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 4,
              "comment": "Fast shipping!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Nicholas Bailey",
              "reviewerEmail": "nicholas.bailey@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Awesome product!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Gabriel Hayes",
              "reviewerEmail": "gabriel.hayes@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Highly impressed!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "James Garcia",
              "reviewerEmail": "james.garcia@x.dummyjson.com"
            }
          ],
          "returnPolicy": "90 days return policy",
          "minimumOrderQuantity": 1,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "0668665656044",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/groceries/Honey%20Jar/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/groceries/Honey%20Jar/thumbnail.png"
        },
        {
          "id": 28,
          "title": "Ice Cream",
          "description":
              "Creamy and delicious ice cream, available in various flavors for a delightful treat.",
          "category": "groceries",
          "price": 5.49,
          "discountPercentage": 7.58,
          "rating": 3.77,
          "stock": 76,
          "tags": ["desserts"],
          "sku": "VEZMU1EQ",
          "weight": 5,
          "dimensions": {"width": 17.66, "height": 24.49, "depth": 25.98},
          "warrantyInformation": "2 year warranty",
          "shippingInformation": "Ships in 2 weeks",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 5,
              "comment": "Great product!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Elena Baker",
              "reviewerEmail": "elena.baker@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Highly impressed!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Madeline Simpson",
              "reviewerEmail": "madeline.simpson@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Very happy with my purchase!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Caleb Nelson",
              "reviewerEmail": "caleb.nelson@x.dummyjson.com"
            }
          ],
          "returnPolicy": "No return policy",
          "minimumOrderQuantity": 19,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "9603960319256",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/groceries/Ice%20Cream/1.png",
            "https://cdn.dummyjson.com/products/images/groceries/Ice%20Cream/2.png",
            "https://cdn.dummyjson.com/products/images/groceries/Ice%20Cream/3.png",
            "https://cdn.dummyjson.com/products/images/groceries/Ice%20Cream/4.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/groceries/Ice%20Cream/thumbnail.png"
        },
        {
          "id": 29,
          "title": "Juice",
          "description":
              "Refreshing fruit juice, packed with vitamins and great for staying hydrated.",
          "category": "groceries",
          "price": 3.99,
          "discountPercentage": 5.45,
          "rating": 3.41,
          "stock": 99,
          "tags": ["beverages"],
          "sku": "M2K19S06",
          "weight": 2,
          "dimensions": {"width": 8.97, "height": 12.26, "depth": 15.05},
          "warrantyInformation": "1 week warranty",
          "shippingInformation": "Ships in 1-2 business days",
          "availabilityStatus": "In Stock",
          "reviews": [
            {
              "rating": 4,
              "comment": "Very satisfied!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Leo Rivera",
              "reviewerEmail": "leo.rivera@x.dummyjson.com"
            },
            {
              "rating": 2,
              "comment": "Not worth the price!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Ethan Martinez",
              "reviewerEmail": "ethan.martinez@x.dummyjson.com"
            },
            {
              "rating": 4,
              "comment": "Excellent quality!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Max Parker",
              "reviewerEmail": "max.parker@x.dummyjson.com"
            }
          ],
          "returnPolicy": "90 days return policy",
          "minimumOrderQuantity": 26,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "8546824122355",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/groceries/Juice/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/groceries/Juice/thumbnail.png"
        },
        {
          "id": 30,
          "title": "Kiwi",
          "description":
              "Nutrient-rich kiwi, perfect for snacking or adding a tropical twist to your dishes.",
          "category": "groceries",
          "price": 2.49,
          "discountPercentage": 10.32,
          "rating": 4.37,
          "stock": 1,
          "tags": ["fruits"],
          "sku": "0X3NORB9",
          "weight": 8,
          "dimensions": {"width": 27.3, "height": 7.48, "depth": 15.08},
          "warrantyInformation": "6 months warranty",
          "shippingInformation": "Ships in 3-5 business days",
          "availabilityStatus": "Low Stock",
          "reviews": [
            {
              "rating": 5,
              "comment": "Very pleased!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Nora Russell",
              "reviewerEmail": "nora.russell@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Very pleased!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Dylan Wells",
              "reviewerEmail": "dylan.wells@x.dummyjson.com"
            },
            {
              "rating": 5,
              "comment": "Great product!",
              "date": "2024-05-23T08:56:21.620Z",
              "reviewerName": "Noah Hernandez",
              "reviewerEmail": "noah.hernandez@x.dummyjson.com"
            }
          ],
          "returnPolicy": "7 days return policy",
          "minimumOrderQuantity": 8,
          "meta": {
            "createdAt": "2024-05-23T08:56:21.620Z",
            "updatedAt": "2024-05-23T08:56:21.620Z",
            "barcode": "3325493172934",
            "qrCode": "https://dummyjson.com/public/qr-code.png"
          },
          "images": [
            "https://cdn.dummyjson.com/products/images/groceries/Kiwi/1.png"
          ],
          "thumbnail":
              "https://cdn.dummyjson.com/products/images/groceries/Kiwi/thumbnail.png"
        }
      ],
      "total": 194,
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
          "todo": "Do something nice for someone you care about",
          "completed": false,
          "userId": 152
        },
        {"id": 2, "todo": "Memorize a poem", "completed": true, "userId": 13},
        {
          "id": 3,
          "todo": "Watch a classic movie",
          "completed": true,
          "userId": 68
        },
        {
          "id": 4,
          "todo": "Watch a documentary",
          "completed": false,
          "userId": 84
        },
        {
          "id": 5,
          "todo": "Invest in cryptocurrency",
          "completed": false,
          "userId": 163
        },
        {
          "id": 6,
          "todo":
              "Contribute code or a monetary donation to an open-source software project",
          "completed": false,
          "userId": 69
        },
        {
          "id": 7,
          "todo": "Solve a Rubik's cube",
          "completed": true,
          "userId": 76
        },
        {
          "id": 8,
          "todo": "Bake pastries for yourself and neighbor",
          "completed": true,
          "userId": 198
        },
        {
          "id": 9,
          "todo": "Go see a Broadway production",
          "completed": false,
          "userId": 7
        },
        {
          "id": 10,
          "todo":
              "Write a thank you letter to an influential person in your life",
          "completed": true,
          "userId": 9
        },
        {
          "id": 11,
          "todo": "Invite some friends over for a game night",
          "completed": false,
          "userId": 104
        },
        {
          "id": 12,
          "todo": "Have a football scrimmage with some friends",
          "completed": false,
          "userId": 32
        },
        {
          "id": 13,
          "todo": "Text a friend you haven't talked to in a long time",
          "completed": true,
          "userId": 2
        },
        {"id": 14, "todo": "Organize pantry", "completed": false, "userId": 46},
        {
          "id": 15,
          "todo": "Buy a new house decoration",
          "completed": true,
          "userId": 105
        },
        {
          "id": 16,
          "todo": "Plan a vacation you've always wanted to take",
          "completed": true,
          "userId": 162
        },
        {"id": 17, "todo": "Clean out car", "completed": false, "userId": 71},
        {
          "id": 18,
          "todo": "Draw and color a Mandala",
          "completed": true,
          "userId": 6
        },
        {
          "id": 19,
          "todo": "Create a cookbook with favorite recipes",
          "completed": true,
          "userId": 53
        },
        {
          "id": 20,
          "todo": "Bake a pie with some friends",
          "completed": false,
          "userId": 162
        },
        {
          "id": 21,
          "todo": "Create a compost pile",
          "completed": false,
          "userId": 13
        },
        {
          "id": 22,
          "todo": "Take a hike at a local park",
          "completed": true,
          "userId": 37
        },
        {
          "id": 23,
          "todo": "Take a class at local community center that interests you",
          "completed": true,
          "userId": 65
        },
        {
          "id": 24,
          "todo": "Research a topic interested in",
          "completed": true,
          "userId": 130
        },
        {
          "id": 25,
          "todo": "Plan a trip to another country",
          "completed": false,
          "userId": 140
        },
        {
          "id": 26,
          "todo": "Improve touch typing",
          "completed": false,
          "userId": 178
        },
        {
          "id": 27,
          "todo": "Learn Express.js",
          "completed": false,
          "userId": 194
        },
        {
          "id": 28,
          "todo": "Learn calligraphy",
          "completed": false,
          "userId": 80
        },
        {
          "id": 29,
          "todo": "Have a photo session with some friends",
          "completed": true,
          "userId": 91
        },
        {"id": 30, "todo": "Go to the gym", "completed": true, "userId": 142}
      ],
      "total": 254,
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
          "tags": ["history", "american", "crime"],
          "reactions": {"likes": 192, "dislikes": 25},
          "views": 305,
          "userId": 121
        },
        {
          "id": 2,
          "title": "He was an expert but not in a discipline",
          "body":
              "He was an expert but not in a discipline that anyone could fully appreciate. He knew how to hold the cone just right so that the soft server ice-cream fell into it at the precise angle to form a perfect cone each and every time. It had taken years to perfect and he could now do it without even putting any thought behind it.",
          "tags": ["french", "fiction", "english"],
          "reactions": {"likes": 859, "dislikes": 32},
          "views": 4884,
          "userId": 91
        },
        {
          "id": 3,
          "title": "Dave watched as the forest burned up on the hill.",
          "body":
              "Dave watched as the forest burned up on the hill, only a few miles from her house. The car had been hastily packed and Marta was inside trying to round up the last of the pets. Dave went through his mental list of the most important papers and documents that they couldn't leave behind. He scolded himself for not having prepared these better in advance and hoped that he had remembered everything that was needed. He continued to wait for Marta to appear with the pets, but she still was nowhere to be seen.",
          "tags": ["magical", "history", "french"],
          "reactions": {"likes": 1448, "dislikes": 39},
          "views": 4152,
          "userId": 16
        },
        {
          "id": 4,
          "title": "All he wanted was a candy bar.",
          "body":
              "All he wanted was a candy bar. It didn't seem like a difficult request to comprehend, but the clerk remained frozen and didn't seem to want to honor the request. It might have had something to do with the gun pointed at his face.",
          "tags": ["mystery", "english", "american"],
          "reactions": {"likes": 359, "dislikes": 18},
          "views": 4548,
          "userId": 47
        },
        {
          "id": 5,
          "title": "Hopes and dreams were dashed that day.",
          "body":
              "Hopes and dreams were dashed that day. It should have been expected, but it still came as a shock. The warning signs had been ignored in favor of the possibility, however remote, that it could actually happen. That possibility had grown from hope to an undeniable belief it must be destiny. That was until it wasn't and the hopes and dreams came crashing down.",
          "tags": ["crime", "mystery", "love"],
          "reactions": {"likes": 119, "dislikes": 30},
          "views": 626,
          "userId": 131
        },
        {
          "id": 6,
          "title": "Dave wasn't exactly sure how he had ended up",
          "body":
              "Dave wasn't exactly sure how he had ended up in this predicament. He ran through all the events that had lead to this current situation and it still didn't make sense. He wanted to spend some time to try and make sense of it all, but he had higher priorities at the moment. The first was how to get out of his current situation of being naked in a tree with snow falling all around and no way for him to get down.",
          "tags": ["english", "classic", "american"],
          "reactions": {"likes": 15, "dislikes": 8},
          "views": 38,
          "userId": 98
        },
        {
          "id": 7,
          "title": "This is important to remember.",
          "body":
              "This is important to remember. Love isn't like pie. You don't need to divide it among all your friends and loved ones. No matter how much love you give, you can always give more. It doesn't run out, so don't try to hold back giving it as if it may one day run out. Give it freely and as much as you want.",
          "tags": ["magical", "crime"],
          "reactions": {"likes": 127, "dislikes": 26},
          "views": 168,
          "userId": 70
        },
        {
          "id": 8,
          "title": "One can cook on and with an open fire.",
          "body":
              "One can cook on and with an open fire. These are some of the ways to cook with fire outside. Cooking meat using a spit is a great way to evenly cook meat. In order to keep meat from burning, it's best to slowly rotate it.",
          "tags": ["american", "english"],
          "reactions": {"likes": 1271, "dislikes": 36},
          "views": 2116,
          "userId": 67
        },
        {
          "id": 9,
          "title": "There are different types of secrets.",
          "body":
              "There are different types of secrets. She had held onto plenty of them during her life, but this one was different. She found herself holding onto the worst type. It was the type of secret that could gnaw away at your insides if you didn't tell someone about it, but it could end up getting you killed if you did.",
          "tags": ["american", "history", "magical"],
          "reactions": {"likes": 703, "dislikes": 18},
          "views": 2235,
          "userId": 82
        },
        {
          "id": 10,
          "title": "They rushed out the door.",
          "body":
              "They rushed out the door, grabbing anything and everything they could think of they might need. There was no time to double-check to make sure they weren't leaving something important behind. Everything was thrown into the car and they sped off. Thirty minutes later they were safe and that was when it dawned on them that they had forgotten the most important thing of all.",
          "tags": ["fiction", "magical", "history"],
          "reactions": {"likes": 455, "dislikes": 3},
          "views": 4504,
          "userId": 144
        },
        {
          "id": 11,
          "title": "It wasn't quite yet time to panic.",
          "body":
              "It wasn't quite yet time to panic. There was still time to salvage the situation. At least that is what she was telling himself. The reality was that it was time to panic and there wasn't time to salvage the situation, but he continued to delude himself into believing there was.",
          "tags": ["mystery", "american", "history"],
          "reactions": {"likes": 453, "dislikes": 8},
          "views": 984,
          "userId": 43
        },
        {
          "id": 12,
          "title": "She was aware that things could go wrong.",
          "body":
              "She was aware that things could go wrong. In fact, she had trained her entire life in anticipation that things would go wrong one day. She had quiet confidence as she started to see that this was the day that all her training would be worthwhile and useful. At this point, she had no idea just how wrong everything would go that day.",
          "tags": ["love", "english"],
          "reactions": {"likes": 362, "dislikes": 45},
          "views": 480,
          "userId": 82
        },
        {
          "id": 13,
          "title": "She wanted rainbow hair.",
          "body":
              "She wanted rainbow hair. That's what she told the hairdresser. It should be deep rainbow colors, too. She wasn't interested in pastel rainbow hair. She wanted it deep and vibrant so there was no doubt that she had done this on purpose.",
          "tags": ["mystery", "classic", "french"],
          "reactions": {"likes": 268, "dislikes": 39},
          "views": 3038,
          "userId": 199
        },
        {
          "id": 14,
          "title": "The paper was blank.",
          "body":
              "The paper was blank. It shouldn't have been. There should have been writing on the paper, at least a paragraph if not more. The fact that the writing wasn't there was frustrating. Actually, it was even more than frustrating. It was downright distressing.",
          "tags": ["mystery", "english", "love"],
          "reactions": {"likes": 118, "dislikes": 17},
          "views": 721,
          "userId": 140
        },
        {
          "id": 15,
          "title": "The trees, therefore, must be such old",
          "body":
              "The trees, therefore, must be such old and primitive techniques that they thought nothing of them, deeming them so inconsequential that even savages like us would know of them and not be suspicious. At that, they probably didn't have too much time after they detected us orbiting and intending to land. And if that were true, there could be only one place where their civilization was hidden.",
          "tags": ["fiction", "history", "crime"],
          "reactions": {"likes": 951, "dislikes": 12},
          "views": 2911,
          "userId": 1
        },
        {
          "id": 16,
          "title": "There was only one way to do things in the Statton house.",
          "body":
              "There was only one way to do things in the Statton house. That one way was to do exactly what the father, Charlie, demanded. He made the decisions and everyone else followed without question. That was until today.",
          "tags": ["magical", "french", "american"],
          "reactions": {"likes": 1257, "dislikes": 11},
          "views": 2019,
          "userId": 99
        },
        {
          "id": 17,
          "title": "She was in a hurry.",
          "body":
              "She was in a hurry. Not the standard hurry when you're in a rush to get someplace, but a frantic hurry. The type of hurry where a few seconds could mean life or death. She raced down the road ignoring speed limits and weaving between cars. She was only a few minutes away when traffic came to a dead standstill on the road ahead.",
          "tags": ["french", "magical", "english"],
          "reactions": {"likes": 50, "dislikes": 31},
          "views": 511,
          "userId": 30
        },
        {
          "id": 18,
          "title": "She had a terrible habit o comparing her life to others",
          "body":
              "She had a terrible habit o comparing her life to others. She realized that their life experiences were completely different than her own and that she saw only what they wanted her to see, but that didn't matter. She still compared herself and yearned for what she thought they had and she didn't.",
          "tags": ["history", "french", "love"],
          "reactions": {"likes": 277, "dislikes": 29},
          "views": 1127,
          "userId": 97
        },
        {
          "id": 19,
          "title": "The rain and wind abruptly stopped.",
          "body":
              "The rain and wind abruptly stopped, but the sky still had the gray swirls of storms in the distance. Dave knew this feeling all too well. The calm before the storm. He only had a limited amount of time before all Hell broke loose, but he stopped to admire the calmness. Maybe it would be different this time, he thought, with the knowledge deep within that it wouldn't.",
          "tags": ["fiction", "crime", "magical"],
          "reactions": {"likes": 566, "dislikes": 2},
          "views": 2128,
          "userId": 143
        },
        {
          "id": 20,
          "title": "He couldn't remember exactly where he had read it",
          "body":
              "He couldn't remember exactly where he had read it, but he was sure that he had. The fact that she didn't believe him was quite frustrating as he began to search the Internet to find the article. It wasn't as if it was something that seemed impossible. Yet she insisted on always seeing the source whenever he stated a fact.",
          "tags": ["french", "classic"],
          "reactions": {"likes": 999, "dislikes": 29},
          "views": 4280,
          "userId": 12
        },
        {
          "id": 21,
          "title": "He wandered down the stairs and into the basement",
          "body":
              "He wandered down the stairs and into the basement. The damp, musty smell of un-use hung in the air. A single, small window let in a glimmer of light, but this simply made the shadows in the basement deeper. He inhaled deeply and looked around at a mess that had been accumulating for over 25 years. He was positive that this was the place he wanted to live.",
          "tags": ["french", "american"],
          "reactions": {"likes": 1376, "dislikes": 13},
          "views": 2738,
          "userId": 136
        },
        {
          "id": 22,
          "title": "She has seen this scene before.",
          "body":
              "She has seen this scene before. It had come to her in dreams many times before. She had to pinch herself to make sure it wasn't a dream again. As her fingers squeezed against her arm, she felt the pain. It was this pain that immediately woke her up.",
          "tags": ["classic", "love", "history"],
          "reactions": {"likes": 1241, "dislikes": 20},
          "views": 4587,
          "userId": 183
        },
        {
          "id": 23,
          "title":
              "It's an unfortunate reality that we don't teach people how to make money",
          "body":
              "It's an unfortunate reality that we don't teach people how to make money (beyond getting a 9 to 5 job) as part of our education system. The truth is there are a lot of different, legitimate ways to make money. That doesn't mean they are easy and that you won't have to work hard to succeed, but it does mean that if you're willing to open your mind a bit you don't have to be stuck in an office from 9 to 5 for the next fifty years o your life.",
          "tags": ["crime", "english"],
          "reactions": {"likes": 675, "dislikes": 16},
          "views": 1634,
          "userId": 206
        },
        {
          "id": 24,
          "title": "The robot clicked disapprovingly.",
          "body":
              "The robot clicked disapprovingly, gurgled briefly inside its cubical interior and extruded a pony glass of brownish liquid. \"Sir, you will undoubtedly end up in a drunkard's grave, dead of hepatic cirrhosis,\" it informed me virtuously as it returned my ID card. I glared as I pushed the glass across the table.",
          "tags": ["crime", "american", "love"],
          "reactions": {"likes": 87, "dislikes": 12},
          "views": 97,
          "userId": 124
        },
        {
          "id": 25,
          "title": "It went through such rapid contortions",
          "body":
              "It went through such rapid contortions that the little bear was forced to change his hold on it so many times he became confused in the darkness, and could not, for the life of him, tell whether he held the sheep right side up, or upside down. But that point was decided for him a moment later by the animal itself, who, with a sudden twist, jabbed its horns so hard into his lowest ribs that he gave a grunt of anger and disgust.",
          "tags": ["fiction", "history", "french"],
          "reactions": {"likes": 1162, "dislikes": 16},
          "views": 2437,
          "userId": 148
        },
        {
          "id": 26,
          "title": "She patiently waited for his number to be called.",
          "body":
              "She patiently waited for his number to be called. She had no desire to be there, but her mom had insisted that she go. She's resisted at first, but over time she realized it was simply easier to appease her and go. Mom tended to be that way. She would keep insisting until you wore down and did what she wanted. So, here she sat, patiently waiting for her number to be called.",
          "tags": ["french", "mystery", "crime"],
          "reactions": {"likes": 444, "dislikes": 3},
          "views": 4070,
          "userId": 156
        },
        {
          "id": 27,
          "title": "Ten more steps.",
          "body":
              "If he could take ten more steps it would be over, but his legs wouldn't move. He tried to will them to work, but they wouldn't listen to his brain. Ten more steps and it would be over but it didn't appear he would be able to do it.",
          "tags": ["mystery", "classic", "love"],
          "reactions": {"likes": 1387, "dislikes": 35},
          "views": 3218,
          "userId": 95
        },
        {
          "id": 28,
          "title": "He had three simple rules by which he lived.",
          "body":
              "He had three simple rules by which he lived. The first was to never eat blue food. There was nothing in nature that was edible that was blue. People often asked about blueberries, but everyone knows those are actually purple. He understood it was one of the stranger rules to live by, but it had served him well thus far in the 50+ years of his life.",
          "tags": ["crime", "love"],
          "reactions": {"likes": 1291, "dislikes": 18},
          "views": 3531,
          "userId": 19
        },
        {
          "id": 29,
          "title": "The chair sat in the corner where it had been",
          "body":
              "The chair sat in the corner where it had been for over 25 years. The only difference was there was someone actually sitting in it. How long had it been since someone had done that? Ten years or more he imagined. Yet there was no denying the presence in the chair now.",
          "tags": ["mystery", "american"],
          "reactions": {"likes": 1, "dislikes": 1},
          "views": 43,
          "userId": 74
        },
        {
          "id": 30,
          "title": "Things aren't going well at all",
          "body":
              "Things aren't going well at all with mom today. She is just a limp noodle and wants to sleep all the time. I sure hope that things get better soon.",
          "tags": ["american", "love", "fiction"],
          "reactions": {"likes": 465, "dislikes": 30},
          "views": 3558,
          "userId": 177
        },
        {
          "id": 31,
          "title": "It was just a burger.",
          "body":
              "It was just a burger. Why couldn't she understand that? She knew he'd completely changed his life around her eating habits, so why couldn't she give him a break this one time? She wasn't even supposed to have found out. Yes, he had promised her and yes, he had broken that promise, but still in his mind, all it had been was just a burger.",
          "tags": ["classic", "fiction", "magical"],
          "reactions": {"likes": 443, "dislikes": 21},
          "views": 1656,
          "userId": 168
        },
        {
          "id": 32,
          "title": "He swung back the fishing pole and cast the line",
          "body":
              "He swung back the fishing pole and cast the line which ell 25 feet away into the river. The lure landed in the perfect spot and he was sure he would soon get a bite. He never expected that the bite would come from behind in the form of a bear.",
          "tags": ["mystery", "american", "english"],
          "reactions": {"likes": 227, "dislikes": 3},
          "views": 818,
          "userId": 6
        },
        {
          "id": 33,
          "title": "He lifted the bottle to his lips and took a sip",
          "body":
              "He lifted the bottle to his lips and took a sip of the drink. He had tasted this before, but he couldn't quite remember the time and place it had happened. He desperately searched his mind trying to locate and remember where he had tasted this when the bicycle ran over his foot.",
          "tags": ["american", "french", "love"],
          "reactions": {"likes": 40, "dislikes": 35},
          "views": 2608,
          "userId": 58
        },
        {
          "id": 34,
          "title": "Debbie had taken George for granted",
          "body":
              "Debbie had taken George for granted for more than fifteen years now. He wasn't sure what exactly had made him choose this time and place to address the issue, but he decided that now was the time. He looked straight into her eyes and just as she was about to speak, turned away and walked out the door.",
          "tags": ["american", "crime", "history"],
          "reactions": {"likes": 654, "dislikes": 15},
          "views": 1194,
          "userId": 98
        },
        {
          "id": 35,
          "title": "She sat deep in thought.",
          "body":
              "She sat deep in thought. The next word that came out o her mouth would likely be the most important word of her life. It had to be exact with no possibility of being misinterpreted. She was ready. She looked deeply into his eyes and said, \"Octopus.\"",
          "tags": ["french", "american", "fiction"],
          "reactions": {"likes": 273, "dislikes": 27},
          "views": 1312,
          "userId": 190
        },
        {
          "id": 36,
          "title": "The leather jacked showed the scars",
          "body":
              "The leather jacked showed the scars of being his favorite for years. It wore those scars with pride, feeling that they enhanced his presence rather than diminishing it. The scars gave it character and had not overwhelmed to the point that it had become ratty. The jacket was in its prime and it knew it.",
          "tags": ["french", "fiction"],
          "reactions": {"likes": 428, "dislikes": 19},
          "views": 765,
          "userId": 207
        },
        {
          "id": 37,
          "title": "There was no time.",
          "body":
              "There was no time. He ran out of the door without half the stuff he needed for work, but it didn't matter. He was late and if he didn't make this meeting on time, someone's life may be in danger.",
          "tags": ["history", "fiction", "english"],
          "reactions": {"likes": 4, "dislikes": 1},
          "views": 11,
          "userId": 150
        },
        {
          "id": 38,
          "title": "He collected the plastic trash on a daily basis.",
          "body":
              "He collected the plastic trash on a daily basis. It never seemed to end. Even if he cleaned the entire beach, more plastic would cover it the next day after the tide had come in. Although it was a futile effort that would never be done, he continued to pick up the trash each day.",
          "tags": ["english", "mystery", "classic"],
          "reactions": {"likes": 834, "dislikes": 47},
          "views": 2013,
          "userId": 177
        },
        {
          "id": 39,
          "title": "It was so great to hear from you today",
          "body":
              "\"It was so great to hear from you today and it was such weird timing,\" he said. \"This is going to sound funny and a little strange, but you were in a dream I had just a couple of days ago. I'd love to get together and tell you about it if you're up for a cup of coffee,\" he continued, laying the trap he'd been planning for years.",
          "tags": ["french", "magical", "american"],
          "reactions": {"likes": 772, "dislikes": 39},
          "views": 1129,
          "userId": 115
        },
        {
          "id": 40,
          "title": "Have you ever wondered about toes?",
          "body":
              "Why 10 toes and not 12. Why are some bigger than others? Some people can use their toes to pick up things while others can barely move them on command. Some toes are nice to look at while others are definitely not something you want to look at. Toes can be stubbed and make us scream. Toes help us balance and walk. 10 toes are just something to ponder.",
          "tags": ["history", "love", "crime"],
          "reactions": {"likes": 172, "dislikes": 19},
          "views": 4923,
          "userId": 181
        },
        {
          "id": 41,
          "title": "His parents continued to question him.",
          "body":
              "He didn't know what to say to them since they refused to believe the truth. He explained again and again, and they dismissed his explanation as a figment of his imagination. There was no way that grandpa, who had been dead for five years, could have told him where the treasure had been hidden. Of course, it didn't help that grandpa was roaring with laughter in the chair next to him as he tried to explain once again how he'd found it.",
          "tags": ["english", "history", "american"],
          "reactions": {"likes": 1211, "dislikes": 21},
          "views": 4476,
          "userId": 140
        },
        {
          "id": 42,
          "title":
              "You know that tingly feeling you get on the back of your neck sometimes?",
          "body":
              "You know that tingly feeling you get on the back of your neck sometimes? I just got that feeling when talking with her. You know I don't believe in sixth senses, but there is something not right with her. I don't know how I know, but I just do.",
          "tags": ["mystery", "french", "american"],
          "reactions": {"likes": 177, "dislikes": 11},
          "views": 3757,
          "userId": 188
        },
        {
          "id": 43,
          "title": "Explain to me again why I shouldn't cheat?",
          "body":
              "\"Explain to me again why I shouldn't cheat?\" he asked. \"All the others do and nobody ever gets punished for doing so. I should go about being happy losing to cheaters because I know that I don't? That's what you're telling me?\"",
          "tags": ["classic", "french", "fiction"],
          "reactions": {"likes": 1338, "dislikes": 15},
          "views": 3359,
          "userId": 6
        },
        {
          "id": 44,
          "title": "A long black shadow slid across the pavement",
          "body":
              "A long black shadow slid across the pavement near their feet and the five Venusians, very much startled, looked overhead. They were barely in time to see the huge gray form of the carnivore before it vanished behind a sign atop a nearby building which bore the mystifying information \"Pepsi-Cola.\"",
          "tags": ["crime", "english", "classic"],
          "reactions": {"likes": 1469, "dislikes": 28},
          "views": 2764,
          "userId": 124
        },
        {
          "id": 45,
          "title": "The red line moved across the page.",
          "body":
              "The red line moved across the page. With each millimeter it advanced forward, something changed in the room. The actual change taking place was difficult to perceive, but the change was real. The red line continued relentlessly across the page and the room would never be the same.",
          "tags": ["love", "american"],
          "reactions": {"likes": 980, "dislikes": 43},
          "views": 2755,
          "userId": 45
        },
        {
          "id": 46,
          "title":
              "The clowns had taken over. And yes, they were literally clowns.",
          "body":
              "The clowns had taken over. And yes, they were literally clowns. Over 100 had appeared out of a small VW bug that had been driven up to the bank. Now they were all inside and had taken it over.",
          "tags": ["crime", "magical", "american"],
          "reactions": {"likes": 597, "dislikes": 23},
          "views": 3730,
          "userId": 132
        },
        {
          "id": 47,
          "title":
              "The shoes had been there for as long as anyone could remember.",
          "body":
              "The shoes had been there for as long as anyone could remember. In fact, it was difficult for anyone to come up with a date they had first appeared. It had seemed they'd always been there and yet they seemed so out of place. Why nobody had removed them was a question that had been asked time and again, but while they all thought it, nobody had ever found the energy to actually do it.",
          "tags": ["american", "french", "crime"],
          "reactions": {"likes": 1007, "dislikes": 19},
          "views": 1176,
          "userId": 126
        },
        {
          "id": 48,
          "title": "Trees. It was something about the trees.",
          "body":
              "Trees. It was something about the trees. The way they swayed with the wind in unison. The way they shaded the area around them. The sounds of their leaves in the wind and the creaks from the branches as they sway, The trees were making a statement that I just couldn't understand.",
          "tags": ["love", "fiction", "crime"],
          "reactions": {"likes": 570, "dislikes": 30},
          "views": 4470,
          "userId": 175
        },
        {
          "id": 49,
          "title": "Sometimes it's just better not to be seen.",
          "body":
              "Sometimes it's just better not to be seen. That's how Harry had always lived his life. He prided himself as being the fly on the wall and the fae that blended into the crowd. That's why he was so shocked that she noticed him.",
          "tags": ["french", "classic"],
          "reactions": {"likes": 390, "dislikes": 25},
          "views": 2928,
          "userId": 207
        },
        {
          "id": 50,
          "title":
              "It was a concerning development that he couldn't get out of his mind.",
          "body":
              "He'd had many friends throughout his early years and had fond memories of playing with them, but he couldn't understand how it had all stopped. There was some point as he grew up that he played with each of his friends for the very last time, and he had no idea that it would be the last.",
          "tags": ["french", "fiction", "love"],
          "reactions": {"likes": 1136, "dislikes": 49},
          "views": 1455,
          "userId": 15
        },
        {
          "id": 51,
          "title": "The towels had been hanging from the rod for years.",
          "body":
              "The towels had been hanging from the rod for years. They were stained and worn, and quite frankly, just plain ugly. Debra didn't want to touch them but she really didn't have a choice. It was important for her to see what was living within them.",
          "tags": ["magical", "english", "american"],
          "reactions": {"likes": 711, "dislikes": 46},
          "views": 4384,
          "userId": 69
        },
        {
          "id": 52,
          "title": "The headache wouldn't go away.",
          "body":
              "The headache wouldn't go away. She's taken medicine but even that didn't help. The monstrous throbbing in her head continued. She had this happen to her only once before in her life and she realized that only one thing could be happening.",
          "tags": ["mystery", "love"],
          "reactions": {"likes": 524, "dislikes": 42},
          "views": 2569,
          "userId": 135
        },
        {
          "id": 53,
          "title": "The young man wanted a role model.",
          "body":
              "The young man wanted a role model. He looked long and hard in his youth, but that role model never materialized. His only choice was to embrace all the people in his life he didn't want to be like.",
          "tags": ["magical", "american"],
          "reactions": {"likes": 1157, "dislikes": 5},
          "views": 1341,
          "userId": 48
        },
        {
          "id": 54,
          "title": "Debbie knew she was being selfish",
          "body":
              "Debbie knew she was being selfish and unreasonable. She understood why the others in the room were angry and frustrated with her and the way she was acting. In her eyes, it didn't really matter how they felt because she simply didn't care.",
          "tags": ["english", "american"],
          "reactions": {"likes": 393, "dislikes": 14},
          "views": 4364,
          "userId": 200
        },
        {
          "id": 55,
          "title": "She tried to explain that love wasn't like pie.",
          "body":
              "She tried to explain that love wasn't like pie. There wasn't a set number of slices to be given out. There wasn't less to be given to one person if you wanted to give more to another. That after a set amount was given out it would all disappear. She tried to explain this, but it fell on deaf ears.",
          "tags": ["mystery", "crime", "fiction"],
          "reactions": {"likes": 56, "dislikes": 46},
          "views": 380,
          "userId": 105
        },
        {
          "id": 56,
          "title": "The house was located at the top of the hill",
          "body":
              "The house was located at the top of the hill at the end of a winding road. It wasn't obvious that the house was there, but everyone in town knew that it existed. They were just all too afraid to ever go and see it in person.",
          "tags": ["classic", "french", "history"],
          "reactions": {"likes": 738, "dislikes": 11},
          "views": 4728,
          "userId": 191
        },
        {
          "id": 57,
          "title": "It seemed like it should have been so simple.",
          "body":
              "It seemed like it should have been so simple. There was nothing inherently difficult with getting the project done. It was simple and straightforward enough that even a child should have been able to complete it on time, but that wasn't the case. The deadline had arrived and the project remained unfinished.",
          "tags": ["love", "classic", "english"],
          "reactions": {"likes": 66, "dislikes": 30},
          "views": 469,
          "userId": 72
        },
        {
          "id": 58,
          "title": "Balloons are pretty and come in different colors",
          "body":
              "Balloons are pretty and come in different colors, different shapes, different sizes, and they can even adjust sizes as needed. But don't make them too big or they might just pop, and then bye-bye balloon. It'll be gone and lost for the rest of mankind. They can serve a variety of purposes, from decorating to water balloon wars. You just have to use your head to think a little bit about what to do with them.",
          "tags": ["american", "crime", "magical"],
          "reactions": {"likes": 127, "dislikes": 45},
          "views": 250,
          "userId": 93
        },
        {
          "id": 59,
          "title":
              "She looked at her student wondering if she could ever get through.",
          "body":
              "She looked at her student wondering if she could ever get through. \"You need to learn to think for yourself,\" she wanted to tell him. \"Your friends are holding you back and bringing you down.\" But she didn't because she knew his friends were all that he had and even if that meant a life of misery, he would never give them up.",
          "tags": ["classic", "english", "history"],
          "reactions": {"likes": 475, "dislikes": 13},
          "views": 4816,
          "userId": 89
        },
        {
          "id": 60,
          "title":
              "He heard the crack echo in the late afternoon about a mile away.",
          "body":
              "He heard the crack echo in the late afternoon about a mile away. His heart started racing and he bolted into a full sprint. \"It wasn't a gunshot, it wasn't a gunshot,\" he repeated under his breathlessness as he continued to sprint.",
          "tags": ["love", "classic", "history"],
          "reactions": {"likes": 1351, "dislikes": 41},
          "views": 2699,
          "userId": 204
        },
        {
          "id": 61,
          "title": "I'm going to hire professional help tomorrow.",
          "body":
              "I'm going to hire professional help tomorrow. I can't handle this anymore. She fell over the coffee table and now there is blood in her catheter. This is much more than I ever signed up to do.",
          "tags": ["fiction", "classic", "american"],
          "reactions": {"likes": 1127, "dislikes": 40},
          "views": 4419,
          "userId": 5
        },
        {
          "id": 62,
          "title": "He watched as the young man tried",
          "body":
              "He watched as the young man tried to impress everyone in the room with his intelligence. There was no doubt that he was smart. The fact that he was more intelligent than anyone else in the room could have been easily deduced, but nobody was really paying any attention due to the fact that it was also obvious that the young man only cared about his intelligence.",
          "tags": ["magical", "mystery", "love"],
          "reactions": {"likes": 553, "dislikes": 9},
          "views": 1880,
          "userId": 55
        },
        {
          "id": 63,
          "title": "Many people say that life isn't like a bed of roses.",
          "body":
              "Many people say that life isn't like a bed of roses. I beg to differ. I think that life is quite like a bed of roses. Just like life, a bed of roses looks pretty on the outside, but when you're in it, you find that it is nothing but thorns and pain. I myself have been pricked quite badly.",
          "tags": ["magical"],
          "reactions": {"likes": 36, "dislikes": 10},
          "views": 136,
          "userId": 132
        },
        {
          "id": 64,
          "title": "There are only three ways to make this work.",
          "body":
              "There are only three ways to make this work. The first is to let me take care of everything. The second is for you to take care of everything. The third is to split everything 50 / 50. I think the last option is the most preferable, but I'm certain it'll also mean the end of our marriage.",
          "tags": ["classic", "english"],
          "reactions": {"likes": 224, "dislikes": 11},
          "views": 1418,
          "userId": 170
        },
        {
          "id": 65,
          "title": "Time is all relative based on age and experience.",
          "body":
              "As a middle-aged adult, time flies by as you watch your children grow up. And finally, as you get old and you have fewer responsibilities and fewer demands on you, time slows. You appreciate each day and are thankful you are alive. An hour is the same amount of time for everyone yet it can feel so different in how it goes by.",
          "tags": ["love", "fiction", "classic"],
          "reactions": {"likes": 538, "dislikes": 10},
          "views": 4830,
          "userId": 76
        },
        {
          "id": 66,
          "title": "Time is all relative based on age and experience.",
          "body":
              "When you are a child an hour is a long time to wait but a very short time when that's all the time you are allowed on your iPad. As a teenager time goes faster the more deadlines you have and the more you procrastinate. As a young adult, you think you have forever to live and don't appreciate the time you spend with others.",
          "tags": ["mystery", "magical", "crime"],
          "reactions": {"likes": 804, "dislikes": 15},
          "views": 4907,
          "userId": 124
        },
        {
          "id": 67,
          "title": "Welcome to my world.",
          "body":
              "You will be greeted by the unexpected here and your mind will be challenged and expanded in ways that you never thought possible. That is if you are able to survive...",
          "tags": ["love", "history"],
          "reactions": {"likes": 651, "dislikes": 15},
          "views": 3326,
          "userId": 173
        },
        {
          "id": 68,
          "title": "She sat down with her notebook in her hand",
          "body":
              "She sat down with her notebook in her hand, her mind wandering to faraway places. She paused and considered all that had happened. It hadn't gone as expected. When the day began she thought it was going to be a bad one, but as she sat recalling the day's events to write them down, she had to admit, it had been a rather marvelous day.",
          "tags": ["history", "english", "love"],
          "reactions": {"likes": 372, "dislikes": 16},
          "views": 3551,
          "userId": 70
        },
        {
          "id": 69,
          "title":
              "The wave roared towards them with speed and violence they had not anticipated.",
          "body":
              "The wave roared towards them with speed and violence they had not anticipated. They both turned to run but by that time it was too late. The wave crashed into their legs sweeping both of them off of their feet. They now found themselves in a washing machine of saltwater, getting tumbled and not know what was up or down.",
          "tags": ["american", "fiction", "classic"],
          "reactions": {"likes": 497, "dislikes": 39},
          "views": 1758,
          "userId": 196
        },
        {
          "id": 70,
          "title": "Sometimes there isn't a good answer.",
          "body":
              "Sometimes there isn't a good answer. No matter how you try to rationalize the outcome, it doesn't make sense. And instead of an answer, you are simply left with a question. Why?",
          "tags": ["english", "history", "crime"],
          "reactions": {"likes": 1145, "dislikes": 45},
          "views": 2060,
          "userId": 101
        },
        {
          "id": 71,
          "title": "He knew what he was supposed to do.",
          "body":
              "He knew what he was supposed to do. That had been apparent from the beginning. That was what made the choice so difficult. What he was supposed to do and what he would do were not the same. This would have been fine if he were willing to face the inevitable consequences, but he wasn't.",
          "tags": ["love", "fiction"],
          "reactions": {"likes": 676, "dislikes": 22},
          "views": 1765,
          "userId": 203
        },
        {
          "id": 72,
          "title": "The words hadn't flowed from his fingers",
          "body":
              "The words hadn't flowed from his fingers for the past few weeks. He never imagined he'd find himself with writer's block, but here he sat with a blank screen in front of him.",
          "tags": ["crime", "history", "classic"],
          "reactions": {"likes": 681, "dislikes": 44},
          "views": 4577,
          "userId": 112
        },
        {
          "id": 73,
          "title": "It was difficult to explain to them",
          "body":
              "It was difficult to explain to them how the diagnosis of certain death had actually given him life. While everyone around him was in tears and upset, he actually felt more at ease. The doctor said it would be less than a year. That gave him a year to live, something he'd failed to do with his daily drudgery of a routine that had passed as life until then.",
          "tags": ["fiction", "classic", "magical"],
          "reactions": {"likes": 389, "dislikes": 37},
          "views": 3462,
          "userId": 155
        },
        {
          "id": 74,
          "title": "He couldn't move. His head throbbed and spun.",
          "body":
              "He couldn't move. His head throbbed and spun. He couldn't decide if it was the flu or the drinking last night. It was probably a combination of both.",
          "tags": ["crime", "fiction", "classic"],
          "reactions": {"likes": 450, "dislikes": 15},
          "views": 2104,
          "userId": 152
        },
        {
          "id": 75,
          "title": "There was something beautiful in his hate.",
          "body":
              "There was something beautiful in his hate. It wasn't the hate itself as it was a disgusting display of racism and intolerance. It was what propelled the hate and the fact that although he had this hate, he didn't understand where it came from. It was at that moment that she realized that there was hope in changing him.",
          "tags": ["classic", "love", "french"],
          "reactions": {"likes": 125, "dislikes": 31},
          "views": 220,
          "userId": 54
        },
        {
          "id": 76,
          "title": "Her mom had warned her.",
          "body":
              "Her mom had warned her. She had been warned time and again, but she had refused to believe her. She had done everything right and she knew she would be rewarded for doing so with the promotion.",
          "tags": ["mystery", "english"],
          "reactions": {"likes": 552, "dislikes": 36},
          "views": 657,
          "userId": 13
        },
        {
          "id": 77,
          "title": "She nervously peered over the edge.",
          "body":
              "She nervously peered over the edge. She understood in her mind that the view was supposed to be beautiful, but all she felt was fear. There had always been something about heights that disturbed her, and now she could feel the full force of this unease.",
          "tags": ["crime", "english", "french"],
          "reactions": {"likes": 327, "dislikes": 42},
          "views": 952,
          "userId": 114
        },
        {
          "id": 78,
          "title": "The thing that's great about this job",
          "body":
              "The thing that's great about this job is the time sourcing the items involves no traveling. I just look online to buy it. It's really as simple as that. While everyone else is searching for what they can sell, I sit in front of my computer and buy better stuff for less money and spend a fraction of the time doing it.",
          "tags": ["crime", "magical"],
          "reactions": {"likes": 37, "dislikes": 4},
          "views": 4020,
          "userId": 51
        },
        {
          "id": 79,
          "title": "It was a simple tip of the hat",
          "body":
              "Grace didn't think that anyone else besides her had even noticed it. It wasn't anything that the average person would notice, let alone remember at the end of the day.",
          "tags": ["american", "classic", "history"],
          "reactions": {"likes": 1319, "dislikes": 28},
          "views": 3554,
          "userId": 45
        },
        {
          "id": 80,
          "title": "Cake or pie?",
          "body":
              "I can tell a lot about you by which one you pick. It may seem silly, but cake people and pie people are really different. I know which one I hope you are, but that's not for me to decide. So, what is it? Cake or pie?",
          "tags": ["classic", "love", "french"],
          "reactions": {"likes": 1007, "dislikes": 22},
          "views": 2670,
          "userId": 80
        },
        {
          "id": 81,
          "title": "There was something in the tree.",
          "body":
              "There was something in the tree. It was difficult to tell from the ground, but Rachael could see movement. She squinted her eyes and peered in the direction of the movement, trying to decipher exactly what she had spied.",
          "tags": ["mystery", "fiction", "love"],
          "reactions": {"likes": 550, "dislikes": 45},
          "views": 4589,
          "userId": 126
        },
        {
          "id": 82,
          "title": "Pink ponies and purple giraffes roamed the field.",
          "body":
              "Pink ponies and purple giraffes roamed the field. Cotton candy grew from the ground as a chocolate river meandered off to the side. What looked like stones in the pasture were actually rock candy. Everything in her dream seemed to be perfect except for the fact that she had no mouth.",
          "tags": ["french", "classic", "mystery"],
          "reactions": {"likes": 915, "dislikes": 25},
          "views": 2424,
          "userId": 79
        },
        {
          "id": 83,
          "title": "Are you getting my texts???",
          "body":
              "\"Are you getting my texts???\" she texted to him. He glanced at it and chuckled under his breath. Of course he was getting them, but if he wasn't getting them, how would he ever be able to answer? He put the phone down and continued on his project. He was ignoring her texts and he planned to continue to do so.",
          "tags": ["mystery", "magical", "history"],
          "reactions": {"likes": 822, "dislikes": 14},
          "views": 837,
          "userId": 84
        },
        {
          "id": 84,
          "title":
              "He stepped away from the mic. This was the best take he had done so far",
          "body":
              "He stepped away from the mic. This was the best take he had done so far, but something seemed missing. Then it struck him all at once. Visuals ran in front of his eyes and music rang in his ears. His eager fingers went to work in an attempt to capture his thoughts hoping the results would produce something that was at least half their glory.",
          "tags": ["magical", "fiction"],
          "reactions": {"likes": 383, "dislikes": 4},
          "views": 511,
          "userId": 145
        },
        {
          "id": 85,
          "title": "The choice was red, green, or blue.",
          "body":
              "It didn't seem like an important choice when he was making it, but it was a choice nonetheless. Had he known the consequences at that time, he would likely have considered the choice a bit longer. In the end, he didn't and ended up choosing blue.",
          "tags": ["english", "fiction"],
          "reactions": {"likes": 395, "dislikes": 45},
          "views": 2285,
          "userId": 47
        },
        {
          "id": 86,
          "title":
              "He picked up the burnt end of the branch and made a mark on the stone.",
          "body":
              "Day 52 if the marks on the stone were accurate. He couldn't be sure. Day and nights had begun to blend together creating confusion, but he knew it was a long time. Much too long.",
          "tags": ["english", "love", "fiction"],
          "reactions": {"likes": 834, "dislikes": 23},
          "views": 2761,
          "userId": 171
        },
        {
          "id": 87,
          "title": "The red glint of paint sparkled under the sun.",
          "body":
              "He had dreamed of owning this car since he was ten, and that dream had become a reality less than a year ago. It was his baby and he spent hours caring for it, pampering it, and fondling over it. She knew this all too well, and that's exactly why she had taken a sludge hammer to it.",
          "tags": ["english", "love", "french"],
          "reactions": {"likes": 251, "dislikes": 8},
          "views": 390,
          "userId": 144
        },
        {
          "id": 88,
          "title": "There were little things that she simply could not stand.",
          "body":
              "There were little things that she simply could not stand. The sound of someone tapping their nails on the table. A person chewing with their mouth open. Another human imposing themselves into her space. She couldn't stand any of these things, but none of them compared to the number one thing she couldn't stand which topped all of them combined.",
          "tags": ["history", "classic", "magical"],
          "reactions": {"likes": 1136, "dislikes": 18},
          "views": 1322,
          "userId": 51
        },
        {
          "id": 89,
          "title": "On Saturday nights I would sit by the phone",
          "body":
              "in the lobby, waiting for Naoko to call. Most of the others were out, so the lobby was usually deserted. I would stare at the grains of light suspended in that silent space, struggling to see into my own heart. What did I want? ",
          "tags": ["english", "mystery"],
          "reactions": {"likes": 58, "dislikes": 37},
          "views": 2817,
          "userId": 104
        },
        {
          "id": 90,
          "title": "Gentlemen of the free-and-easy sort",
          "body":
              "plume themselves on being acquainted with a move or two, and being usually equal to the time-of-day, express the wide range of their capacity for adventure by observing that they are good for anything from pitch-and-toss to manslaughter;",
          "tags": ["love", "history"],
          "reactions": {"likes": 1211, "dislikes": 24},
          "views": 3271,
          "userId": 150
        },
        {
          "id": 91,
          "title": "In truth, Mrs. Gradgrind's stock of facts in",
          "body":
              "general was woefully defective; but Mr. Gradgrind in raising her to her high matrimonial position, had been influenced by two reasons.  Firstly, she was most satisfactory as a question of figures; and, secondly,",
          "tags": ["love", "crime"],
          "reactions": {"likes": 115, "dislikes": 32},
          "views": 512,
          "userId": 204
        },
        {
          "id": 92,
          "title": "'My dear Bounderby,' Mr. Gradgrind began",
          "body":
              "'Now, you'll excuse me,' said Bounderby, 'but I don't want to be too dear.  That, to start with.  When I begin to be dear to a man, I generally find that his intention is to come over me.",
          "tags": ["classic", "love", "english"],
          "reactions": {"likes": 191, "dislikes": 37},
          "views": 3533,
          "userId": 102
        },
        {
          "id": 93,
          "title": "He could find no answer, except life's usual",
          "body":
              "answer to the most complex and insoluble questions. That answer is: live in the needs of the day, that is, find forgetfulness.",
          "tags": ["magical", "american", "classic"],
          "reactions": {"likes": 75, "dislikes": 3},
          "views": 828,
          "userId": 169
        },
        {
          "id": 94,
          "title": "Happiness was different in childhood.",
          "body":
              "so much then a matter simply of accumulation, of taking things - new experiences, new emotions - and applying them like so many polished tiles to what would someday be the marvellously finished pavilion of the self.",
          "tags": ["american", "crime", "mystery"],
          "reactions": {"likes": 573, "dislikes": 24},
          "views": 2319,
          "userId": 28
        },
        {
          "id": 95,
          "title": "So what is the answer? How can you stand",
          "body":
              "From the moment you go to prison you must put your cozy past firmly behind you. At the very threshold, you must say to yourself: “My life is over, a little early to be sure, but there's nothing to be done about it. I shall never return to freedom.",
          "tags": ["love", "fiction", "history"],
          "reactions": {"likes": 8, "dislikes": 4},
          "views": 8,
          "userId": 113
        },
        {
          "id": 96,
          "title": "If only it were all so simple! If only there",
          "body":
              "were evil people somewhere insidiously committing evil deeds, and it were necessary only to separate them from the rest of us and destroy them. But the line dividing good and evil cuts through the heart of every human being. And who is willing to destroy a piece of his own heart?",
          "tags": ["classic", "mystery", "french"],
          "reactions": {"likes": 64, "dislikes": 50},
          "views": 2095,
          "userId": 198
        },
        {
          "id": 97,
          "title": "As for the leaflets reporting the creation of",
          "body":
              "the ROA, the “Russian Liberation Army,” not only were they written in bad Russian, but they were imbued with an alien spirit that was clearly German and, moreover, seemed little concerned with their presumed subject; besides, and on the other hand,",
          "tags": ["classic", "fiction", "crime"],
          "reactions": {"likes": 99, "dislikes": 40},
          "views": 154,
          "userId": 72
        },
        {
          "id": 98,
          "title": "And how can you bring it home to them?",
          "body":
              "an inspiration? By a vision? A dream? Brothers! People! Why has life been given you? In the deep, deaf stillness of midnight, the doors of the death cells are being swung open - and great-souled people are being dragged out to be shot.",
          "tags": ["english", "mystery", "fiction"],
          "reactions": {"likes": 652, "dislikes": 21},
          "views": 1158,
          "userId": 161
        },
        {
          "id": 99,
          "title": "Like all men not really up to their job,",
          "body":
              "a stickler for externals and petty quotidian things; and in lieu of an intellect he had accumulated an armoury of capitalized key-words like Discipline and Tradition and Responsibility.",
          "tags": ["crime", "classic"],
          "reactions": {"likes": 1377, "dislikes": 22},
          "views": 3342,
          "userId": 154
        },
        {
          "id": 100,
          "title": "But Art is a punitive sentence, not a",
          "body":
              "birthright, & there is nothing in my early life that suggests artistic aptitude or even interest, my pastimes & fascinations nearly all being what may - & were - deemed the merely villainous.",
          "tags": ["love", "history", "crime"],
          "reactions": {"likes": 121, "dislikes": 1},
          "views": 252,
          "userId": 131
        },
        {
          "id": 101,
          "title": "All Hallows Day: grief comes in waves.",
          "body":
              "t threatens to capsize him. He doesn't believe that the dead come back; but that doesn't stop him from feeling the brush of their fingertips, wingtips, against his shoulder.",
          "tags": ["classic", "crime", "english"],
          "reactions": {"likes": 1341, "dislikes": 6},
          "views": 4695,
          "userId": 72
        },
        {
          "id": 102,
          "title": "Being in high school, Miles had no idea there",
          "body":
              "were girls in the world who might be nice to some boy who'd suffered the misfortune of falling in love with them, even when they couldn't return the favor.",
          "tags": ["love", "american", "english"],
          "reactions": {"likes": 1091, "dislikes": 11},
          "views": 1397,
          "userId": 73
        },
        {
          "id": 103,
          "title": "But they didn't devote the whole evening to",
          "body":
              "music. After a while they played at forfeits; for it is good to be children sometimes, and never better than at Christmas, when its mighty Founder was a child himself. Stop. There was first a game at blind-man's buff.",
          "tags": ["fiction", "french", "classic"],
          "reactions": {"likes": 1088, "dislikes": 32},
          "views": 4031,
          "userId": 66
        },
        {
          "id": 104,
          "title": "Each failed overture of peace made the next",
          "body":
              "overture less likely to succeed. Before long, what at first glance had seemed to Gary an absurd possibility - that the till of their marriage no longer contained sufficient funds of love and goodwill to cover the emotional costs that going to St.",
          "tags": ["american", "english", "crime"],
          "reactions": {"likes": 1049, "dislikes": 29},
          "views": 4033,
          "userId": 77
        },
        {
          "id": 105,
          "title": "All men dream, but not equally.",
          "body":
              "dream by night in the dusty recesses of their minds wake in the day to find that it was vanity: but the dreamers of the day are dangerous men, for they may act their dreams with open eyes.",
          "tags": ["french", "magical", "english"],
          "reactions": {"likes": 154, "dislikes": 41},
          "views": 827,
          "userId": 97
        },
        {
          "id": 106,
          "title": "Sometimes… Come on, how often exactly,",
          "body":
              "Bert? Can you recall four, five, more such occasions? Or would no human heart have survived two or three? Sometimes (I have nothing to say in reply to your question), while Lolita would be haphazardly preparing her homework,",
          "tags": ["mystery", "english", "french"],
          "reactions": {"likes": 451, "dislikes": 47},
          "views": 1667,
          "userId": 18
        },
        {
          "id": 107,
          "title": "She would never know, because he would",
          "body":
              "never tell her. Somehow if she'd known the worst parts, she couldn't have gone on being a haven for him. He was groping for an idea that he couldn't quite grasp.",
          "tags": ["french", "american", "crime"],
          "reactions": {"likes": 429, "dislikes": 15},
          "views": 861,
          "userId": 18
        },
        {
          "id": 108,
          "title": "He ran as he'd never run before",
          "body":
              "hope nor despair. He ran because the world was divided into opposites and his side had already been chosen for him, his only choice being whether or not to play his part with heart and courage.",
          "tags": ["magical", "mystery", "love"],
          "reactions": {"likes": 914, "dislikes": 2},
          "views": 3679,
          "userId": 174
        },
        {
          "id": 109,
          "title": "How vulgar, this hankering after",
          "body":
              "mortality, how vain, how false. Composers are merely scribblers of cave paintings. One writes music because winter is eternal and because, if one didn't, the wolves and blizzards would be at one's throat all the sooner.",
          "tags": ["mystery", "classic", "history"],
          "reactions": {"likes": 815, "dislikes": 36},
          "views": 2380,
          "userId": 23
        },
        {
          "id": 110,
          "title": "The embassy's door was of bulletproof steel",
          "body":
              "lined with a veneer of English oak. You attained it by touching a button in a silent lift. The royal crest, in this air-conditioned stillness, suggested silicone and funeral parlours.",
          "tags": ["classic", "magical", "american"],
          "reactions": {"likes": 73, "dislikes": 33},
          "views": 3332,
          "userId": 107
        },
        {
          "id": 111,
          "title": "Act, implores the Ghost of Future Regret.",
          "body":
              "Jacob hurries past the tomatoes and catches her up near the gate.'Miss Abigawa? Miss Aibagawa. I must ask you to forgive me.'She has turned around and has one hand on the gate. 'Why forgive?",
          "tags": ["crime", "love"],
          "reactions": {"likes": 623, "dislikes": 39},
          "views": 1481,
          "userId": 112
        },
        {
          "id": 112,
          "title": "The ship rolls and her timbers creak like",
          "body":
              "Men of commerce, sir…' Nash counts out laudanum drops into the pewter beaker '… for the most part, had their consciences cut out at birth. Better an honest drowning than slow death by hypocrisy,",
          "tags": ["fiction", "history", "american"],
          "reactions": {"likes": 432, "dislikes": 43},
          "views": 578,
          "userId": 32
        },
        {
          "id": 113,
          "title": "He let the phone slip from his hand and lay",
          "body":
              "crying for a while, silently, shaking the cheap bed. He didn't know what to do, he didn't know how to live. Each new thing he encountered in life impelled him in a direction that fully convinced him of its rightness,",
          "tags": ["french", "fiction"],
          "reactions": {"likes": 926, "dislikes": 1},
          "views": 4698,
          "userId": 171
        },
        {
          "id": 114,
          "title": "When they leave the church, the last light is",
          "body":
              "vanishing into the sky, and a stray snowflake drifts along towards the south. They remount; it has been a long day; his clothes feel heavy on his back.",
          "tags": ["french", "classic", "love"],
          "reactions": {"likes": 876, "dislikes": 14},
          "views": 2891,
          "userId": 67
        },
        {
          "id": 115,
          "title": "In the days to follow the hacendado would",
          "body":
              "come up to the corral where they'd shaped the manada and he and John Grady would walk among the mares and John Grady would argue their points and the hacendado would muse and walk away a fixed distance.",
          "tags": ["american", "fiction", "history"],
          "reactions": {"likes": 358, "dislikes": 37},
          "views": 2093,
          "userId": 72
        },
        {
          "id": 116,
          "title": "Imagine the silence now, in that place which",
          "body":
              "is no-place, that anteroom to God where each hour is ten thousand years long. Once you imagined the souls held in a great net, a web spun by God,",
          "tags": ["magical", "crime", "american"],
          "reactions": {"likes": 183, "dislikes": 40},
          "views": 1390,
          "userId": 26
        },
        {
          "id": 117,
          "title": "Then, perhaps overcome with nostalgia for",
          "body":
              "happier times, he gave me a good kicking. Afterwards I assured him he had all the attributes necessary for a successful artistic career, through unfortunately my mouth was too swollen to list them for Pobjoy's benefit: mediocrity;",
          "tags": ["history", "mystery", "american"],
          "reactions": {"likes": 120, "dislikes": 3},
          "views": 3859,
          "userId": 62
        },
        {
          "id": 118,
          "title": "I knew that on the island one was driven",
          "body":
              "back into the past. There was so much space, so much silence, so few meetings that one too easily saw out of the present, and then the past seemed ten times closer than it was.",
          "tags": ["american", "magical", "love"],
          "reactions": {"likes": 431, "dislikes": 7},
          "views": 1102,
          "userId": 57
        },
        {
          "id": 119,
          "title": "It was but a hurried parting in a common",
          "body":
              "street, yet it was a sacred remembrance to these two common people.  Utilitarian economists, skeletons of schoolmasters, Commissioners of Fact,",
          "tags": ["history", "magical", "english"],
          "reactions": {"likes": 1206, "dislikes": 0},
          "views": 3139,
          "userId": 13
        },
        {
          "id": 120,
          "title": "When a woman withdraws to give birth the",
          "body":
              "sun may be shining but the shutters of her room are closed so she can make her own weather. She is kept in the dark so she can dream. Her dreams drift her far away,",
          "tags": ["crime", "history", "mystery"],
          "reactions": {"likes": 1311, "dislikes": 34},
          "views": 4914,
          "userId": 105
        },
        {
          "id": 121,
          "title": "Revolution and youth are closely allied.",
          "body":
              "can a revolution promise to adults? To some it brings disgrace, to others favor. But even that favor is questionable,",
          "tags": ["english", "history", "crime"],
          "reactions": {"likes": 159, "dislikes": 4},
          "views": 4114,
          "userId": 7
        },
        {
          "id": 122,
          "title": "The point was we took this shit very",
          "body":
              "seriously. They had taken away our flowers, our summer days, and our bonuses, we were on a wage freeze and a hiring freeze, and people were flying out the door like so many dismantled dummies.",
          "tags": ["history", "english", "crime"],
          "reactions": {"likes": 853, "dislikes": 47},
          "views": 3140,
          "userId": 31
        },
        {
          "id": 123,
          "title": "The old scholar was watching the noisy",
          "body":
              "young people around him and it suddenly occurred to him that he was the only one in the whole audience who had the privilege of freedom, ",
          "tags": ["mystery", "classic"],
          "reactions": {"likes": 1350, "dislikes": 12},
          "views": 1583,
          "userId": 5
        },
        {
          "id": 124,
          "title": "Later, on my walk, I wondered why I felt I",
          "body":
              "had to be suspicious of 'normality'. The striking thing about the normal is that there is nothing normal about it:",
          "tags": ["english", "mystery"],
          "reactions": {"likes": 893, "dislikes": 45},
          "views": 974,
          "userId": 150
        },
        {
          "id": 125,
          "title": "Looking back on those incidents,",
          "body":
              "always appalled by the memory of his passivity, hard though it was to see what else he could have done. He could have refused to pay for the gravy damage to his room, could have refused to change his shoes,",
          "tags": ["fiction", "classic"],
          "reactions": {"likes": 1392, "dislikes": 13},
          "views": 4240,
          "userId": 152
        },
        {
          "id": 126,
          "title": "I hoped she did not dislike me,",
          "body":
              "under no illusions that she might remember me in any way fondly; that is, if she remembered me at all. I was but one of a procession; I provided extra food, drink, that day some tobacco, beyond that I did not exist for her.",
          "tags": ["english", "classic", "mystery"],
          "reactions": {"likes": 120, "dislikes": 43},
          "views": 278,
          "userId": 102
        },
        {
          "id": 127,
          "title": "If I may so express it, I was steeped in Dora.",
          "body":
              "was not merely over head and ears in love with her, but I was saturated through and through. Enough love might have been wrung out of me, metaphorically speaking,",
          "tags": ["english", "american"],
          "reactions": {"likes": 400, "dislikes": 21},
          "views": 767,
          "userId": 43
        },
        {
          "id": 128,
          "title": "Lyrical poetry is a realm in which any",
          "body":
              "statement immediately becomes truth. Yesterday the poet said life is a vale of tears; today he said life is a land of smiles; and he was right both times. There is no inconsistency.",
          "tags": ["crime", "love", "english"],
          "reactions": {"likes": 39, "dislikes": 4},
          "views": 2379,
          "userId": 63
        },
        {
          "id": 129,
          "title": "Sometimes, when Chapuys has finished",
          "body":
              "digging up Walter's bones and making his own life unfamiliar to him, he feels almost impelled to speak in defense of his father, his childhood. But it is no use to justify yourself. It is no good to explain. It is weak to be anecdotal.",
          "tags": ["american", "love", "magical"],
          "reactions": {"likes": 63, "dislikes": 10},
          "views": 4850,
          "userId": 128
        },
        {
          "id": 130,
          "title": "Always I had acted as if a third person was watching",
          "body":
              "Always I had acted as if a third person was watching and listening and giving me marks for good or bad behaviour - a god like a novelist, to whom I turned, like a character with the power to please, the sensitivity to feel slighted, the ability to adapt himself to whatever he believed the novelist-god wanted.",
          "tags": ["english", "crime", "american"],
          "reactions": {"likes": 985, "dislikes": 36},
          "views": 4261,
          "userId": 48
        },
        {
          "id": 131,
          "title": "What was I after all?",
          "body":
              "Near enough what Conchis had had me told: nothing but the net sum of countless wrong turnings. I dismissed most of the Freudian jargon of the trial; but all my life I had tried to turn life to fiction, to hold reality away.",
          "tags": ["crime", "english"],
          "reactions": {"likes": 1455, "dislikes": 43},
          "views": 2810,
          "userId": 30
        },
        {
          "id": 132,
          "title": "Now they were in the earth",
          "body":
              "Now they were in the earth to which they had given their lives; and slowly, year by year, the earth would take them.",
          "tags": ["french", "american"],
          "reactions": {"likes": 120, "dislikes": 9},
          "views": 687,
          "userId": 170
        },
        {
          "id": 133,
          "title": "He thought of the cost exacted",
          "body":
              "He thought of the cost exacted, year after year, by the soil; and it remained as it had been—a little more barren, perhaps, a little more frugal of increase. Nothing had changed. Their lives had been expended in cheerless labor, their wills broken, their intelligences numbed.",
          "tags": ["classic", "history", "crime"],
          "reactions": {"likes": 1028, "dislikes": 28},
          "views": 1248,
          "userId": 116
        },
        {
          "id": 134,
          "title": "He buried her beside her husband",
          "body":
              "He buried her beside her husband. After the services were over and the few mourners had gone, he stood alone in a cold November wind and looked at the two graves, one open to its burden and the other mounded and covered by a thin fuzz of grass.",
          "tags": ["mystery", "english"],
          "reactions": {"likes": 15, "dislikes": 6},
          "views": 4437,
          "userId": 97
        },
        {
          "id": 135,
          "title": "I was disconcerted, for I had broken away",
          "body":
              "I was disconcerted, for I had broken away without quite seeing where I was going to. It was not to be shuffled off now, however, and I answered, `The beautiful young lady at Miss Havisham's, and she's more beautiful than anybody ever was, and I admire her dreadfully, and I want to be a gentleman on her account.'",
          "tags": ["english", "classic"],
          "reactions": {"likes": 490, "dislikes": 40},
          "views": 2475,
          "userId": 87
        },
        {
          "id": 136,
          "title": "You must thrive in spite of yourself",
          "body":
              "You must thrive in spite of yourself; and so that you may do it, God takes out your heart of flesh, and gives you a heart of stone.",
          "tags": ["fiction", "french", "mystery"],
          "reactions": {"likes": 1424, "dislikes": 31},
          "views": 1511,
          "userId": 106
        },
        {
          "id": 137,
          "title": "He once thought it himself, that he might die",
          "body":
              "He once thought it himself, that he might die with grief: for his wife, his daughters, his sisters, his father and master the cardinal. But pulse, obdurate, keeps its rhythm. You think you cannot keep breathing, but your ribcage has other ideas, rising and falling, emitting sighs.˝",
          "tags": ["fiction", "history", "crime"],
          "reactions": {"likes": 799, "dislikes": 4},
          "views": 2695,
          "userId": 59
        },
        {
          "id": 138,
          "title": "On foot, from necessity or in deference",
          "body":
              "On foot, from necessity or in deference to his dismounted commander or associates, his conduct was the same. He would stand like a rock in the open when officers and men alike had taken to cover;",
          "tags": ["fiction", "history", "classic"],
          "reactions": {"likes": 1454, "dislikes": 10},
          "views": 4655,
          "userId": 126
        },
        {
          "id": 139,
          "title": "He stood over the body in the fading light",
          "body":
              "Adjusting the hair and putting the finishing touches to the simple toilet, doing all mechanically, with soulless care. And still through his consciousness ran an undersense of conviction that all was right—that he should have her again as before, and everything explained.",
          "tags": ["classic", "love", "american"],
          "reactions": {"likes": 486, "dislikes": 31},
          "views": 3774,
          "userId": 125
        },
        {
          "id": 140,
          "title": "A secret always has a strengthening effect",
          "body":
              "A secret always has a strengthening effect upon a newborn friendship, as does the shared impression than an external figure is to blame: the men of the Crown have become united less by their shared beliefs, we observe, than by their shared misgivings.",
          "tags": ["english", "magical", "french"],
          "reactions": {"likes": 43, "dislikes": 32},
          "views": 3334,
          "userId": 150
        },
        {
          "id": 141,
          "title": "A judgment that is necessarily hampered",
          "body":
              "A judgment that is necessarily hampered, bot only by the scope and limits of his imagination, but by the ever-changing measure of his doubt and self-esteem.",
          "tags": ["love", "english"],
          "reactions": {"likes": 51, "dislikes": 39},
          "views": 66,
          "userId": 34
        },
        {
          "id": 142,
          "title": "For although a man is judged by his actions",
          "body":
              "For although a man is judged by his actions, by what he has said and done, a man judges himself by what he is willing to do, by what he might have said, or might have done",
          "tags": ["american", "crime", "magical"],
          "reactions": {"likes": 136, "dislikes": 29},
          "views": 240,
          "userId": 35
        },
        {
          "id": 143,
          "title": "Everything failed to subdue me",
          "body":
              "Everything failed to subdue me. Soon everything seemed dull: another sunrise, the lives of heroes, failing love, war, the discoveries people made about each other.",
          "tags": ["french", "american", "history"],
          "reactions": {"likes": 118, "dislikes": 41},
          "views": 269,
          "userId": 34
        },
        {
          "id": 144,
          "title": "In the hospital men's room",
          "body":
              "In the hospital men's room, as I'm washing my hands, I glance in the mirror. The man I see is not so much me as my father. When did he show up? There is no soap; I rub hand sanitizer into my face-it burns. I nearly drown myself in the sink trying to rinse it off.",
          "tags": ["magical", "history", "fiction"],
          "reactions": {"likes": 981, "dislikes": 46},
          "views": 1649,
          "userId": 104
        },
        {
          "id": 145,
          "title": "But just as I didn't want to resent my kids",
          "body":
              "I also didn't want to find myself too much in love with them. There are parents who don't like to hear their little girl crying at night, at the vast approaching dark of sleep, and so in their torment think why not feed her a lollipop, and a few years later that kid's got seven cavities and a pulled tooth.",
          "tags": ["love", "magical", "classic"],
          "reactions": {"likes": 974, "dislikes": 36},
          "views": 2463,
          "userId": 126
        },
        {
          "id": 146,
          "title": "Christ, he thinks, by my age I ought to know",
          "body":
              "You don't get on by being original. You don't get on by being bright. You don't get on by being strong. You get on by being a subtle crook;",
          "tags": ["fiction", "history", "english"],
          "reactions": {"likes": 143, "dislikes": 28},
          "views": 1460,
          "userId": 189
        },
        {
          "id": 147,
          "title": "They look so fine, and young",
          "body":
              "They look so fine, and young, and wrapped up in each other. Love is so fresh and clean at that age. Don't you think?",
          "tags": ["french", "classic", "history"],
          "reactions": {"likes": 481, "dislikes": 21},
          "views": 559,
          "userId": 126
        },
        {
          "id": 148,
          "title": "Your only chance of survival",
          "body":
              "Your only chance of survival, if you are sincerely smitten, lies in hiding this fact from the woman you love, of feigning a casual detachment under all circumstances.",
          "tags": ["crime", "classic", "love"],
          "reactions": {"likes": 1280, "dislikes": 4},
          "views": 3588,
          "userId": 138
        },
        {
          "id": 149,
          "title": "During the first part of your life",
          "body":
              "During the first part of your life, you only become aware of happiness once you have lost it. Then an age comes, a second one, in which you already know, at the moment when you begin to experience true happiness.",
          "tags": ["love", "american", "classic"],
          "reactions": {"likes": 546, "dislikes": 42},
          "views": 4638,
          "userId": 56
        },
        {
          "id": 150,
          "title": "Were you in love with her?",
          "body":
              "The question is in a way meaningless, she knows, but one must ask. Love in such situations is rarely real. Sex is the engine, exalting and ruining people, sex and frustration. Love is what people believe is worth the path of devastation.",
          "tags": ["fiction", "mystery", "english"],
          "reactions": {"likes": 234, "dislikes": 10},
          "views": 406,
          "userId": 94
        },
        {
          "id": 151,
          "title": "The sun set below the horizon",
          "body":
              "The sun set below the horizon, and the sky turned a deep shade of purple. The stars began to appear, and the world was bathed in a soft, silvery light. It was a beautiful sight, and for a moment, all was right with the world.",
          "tags": ["magical", "fiction"],
          "reactions": {"likes": 243, "dislikes": 30},
          "views": 1157,
          "userId": 108
        },
        {
          "id": 152,
          "title": "He gazed at the old photographs",
          "body":
              "Memories of a bygone era, each picture telling a story of love, loss, and life. They were his treasures, his link to the past. The sepia tones and worn edges spoke of days long gone, of moments frozen in time that still held so much emotion and significance.",
          "tags": ["memory", "history", "nostalgia"],
          "reactions": {"likes": 555, "dislikes": 16},
          "views": 2270,
          "userId": 57
        },
        {
          "id": 153,
          "title": "The forest was alive with the sounds of nature",
          "body":
              "Birds sang, leaves rustled, and a gentle stream trickled nearby. It was a symphony of life, a reminder of the world's beauty. The dense canopy overhead filtered the sunlight, creating a mosaic of light and shadow on the forest floor, a tranquil haven far from the chaos of modern life.",
          "tags": ["nature", "tranquility", "life"],
          "reactions": {"likes": 366, "dislikes": 28},
          "views": 1868,
          "userId": 24
        },
        {
          "id": 154,
          "title": "She found solace in books",
          "body":
              "Each page a new adventure, a new world to explore. They were her escape, her refuge from the chaos of reality. Lost in the stories, she traveled to distant lands, met fascinating characters, and experienced the thrill of the unknown, all from the comfort of her favorite chair.",
          "tags": ["books", "adventure", "escape"],
          "reactions": {"likes": 297, "dislikes": 18},
          "views": 2529,
          "userId": 133
        },
        {
          "id": 155,
          "title": "The city was a jungle of concrete and steel",
          "body":
              "But amidst the chaos, there was beauty. The lights, the energy, the endless possibilities. It was alive, vibrant, and ever-changing. Each street had its own rhythm, a pulse that spoke of countless stories unfolding, dreams being chased, and lives intertwining.",
          "tags": ["city", "urban", "energy"],
          "reactions": {"likes": 350, "dislikes": 42},
          "views": 1666,
          "userId": 37
        },
        {
          "id": 156,
          "title": "He marveled at the starry sky",
          "body":
              "Each star a beacon of light in the vast darkness. It was a reminder of how small we are, and yet how connected. The constellations told ancient stories, while the Milky Way stretched across the sky like a river of light, evoking a sense of wonder and infinite possibilities.",
          "tags": ["stars", "universe", "wonder"],
          "reactions": {"likes": 1053, "dislikes": 9},
          "views": 2898,
          "userId": 108
        },
        {
          "id": 157,
          "title": "The old man told tales of his youth",
          "body":
              "Stories of adventure, love, and loss. His eyes sparkled with memories, his voice rich with emotion. Each tale was a piece of history, a fragment of a life lived fully, offering lessons learned and wisdom gained through years of experience.",
          "tags": ["stories", "memory", "emotion"],
          "reactions": {"likes": 610, "dislikes": 22},
          "views": 3142,
          "userId": 92
        },
        {
          "id": 158,
          "title": "The waves crashed against the rocks",
          "body":
              "Each surge of water a testament to the ocean's power and beauty. It was a mesmerizing dance of nature. The relentless rhythm of the waves, their thunderous impact, and the frothy spray all spoke of the untamed force and majesty of the sea.",
          "tags": ["ocean", "power", "beauty"],
          "reactions": {"likes": 1145, "dislikes": 50},
          "views": 3532,
          "userId": 179
        },
        {
          "id": 159,
          "title": "The garden was a riot of color",
          "body":
              "Flowers of every hue bloomed in a chaotic harmony, a feast for the eyes and a balm for the soul. The air was fragrant with their scent, and the buzzing of bees added a vibrant soundtrack to the dazzling display of natural artistry.",
          "tags": ["garden", "color", "harmony"],
          "reactions": {"likes": 334, "dislikes": 7},
          "views": 4494,
          "userId": 9
        },
        {
          "id": 160,
          "title": "She cherished the quiet moments",
          "body":
              "Those rare times when the world slowed down, and she could breathe, reflect, and simply be. In the stillness, she found clarity and peace, a chance to reconnect with herself and appreciate the simple joys of life.",
          "tags": ["peace", "reflection", "serenity"],
          "reactions": {"likes": 1007, "dislikes": 12},
          "views": 3941,
          "userId": 108
        },
        {
          "id": 161,
          "title": "The music filled the room",
          "body":
              "Each note a thread in a tapestry of sound, weaving a story of joy, sorrow, and everything in between. The melody carried her away, evoking memories and emotions she thought long forgotten, a powerful reminder of the transformative power of music.",
          "tags": ["music", "emotion", "joy"],
          "reactions": {"likes": 684, "dislikes": 43},
          "views": 4188,
          "userId": 204
        },
        {
          "id": 162,
          "title": "The lighthouse stood tall on the rocky shore",
          "body":
              "Its beam of light cutting through the thick fog, guiding ships safely to harbor. The lighthouse was a symbol of hope and safety, its solitary presence a beacon for sailors navigating treacherous waters. Its history was etched into the weathered stones, a testament to its enduring purpose.",
          "tags": ["lighthouse", "hope", "history"],
          "reactions": {"likes": 223, "dislikes": 17},
          "views": 4608,
          "userId": 32
        },
        {
          "id": 163,
          "title": "She wandered through the ancient ruins",
          "body":
              "The remnants of a civilization long gone. Each stone, each archway told a story of a bygone era, of people who lived, loved, and dreamed. The air was thick with history, and she felt a deep connection to the past as she explored the crumbling walls.",
          "tags": ["ruins", "history", "mystery"],
          "reactions": {"likes": 183, "dislikes": 42},
          "views": 3098,
          "userId": 26
        },
        {
          "id": 164,
          "title": "The desert stretched out before him",
          "body":
              "A vast expanse of golden sands under a blazing sun. The silence was profound, broken only by the occasional whisper of the wind. It was a place of stark beauty and harsh reality, where survival required resilience and respect for nature's power.",
          "tags": ["desert", "nature", "resilience"],
          "reactions": {"likes": 400, "dislikes": 14},
          "views": 2002,
          "userId": 65
        },
        {
          "id": 165,
          "title": "The old bridge spanned the wide river",
          "body":
              "A marvel of engineering from a bygone era. It connected two worlds, carrying the weight of countless journeys and stories. As he walked across, he felt the bridge's history beneath his feet, a silent witness to the passage of time.",
          "tags": ["bridge", "engineering", "history"],
          "reactions": {"likes": 795, "dislikes": 23},
          "views": 1619,
          "userId": 133
        },
        {
          "id": 166,
          "title": "She listened to the rain pattering on the roof",
          "body":
              "Each drop a gentle reminder of nature's rhythm. The world outside was a blur of gray, but inside she felt a deep sense of peace. The rain was a lullaby, soothing her mind and soul, a moment of calm in a chaotic world.",
          "tags": ["rain", "peace", "nature"],
          "reactions": {"likes": 105, "dislikes": 32},
          "views": 4351,
          "userId": 131
        },
        {
          "id": 167,
          "title": "The market was a bustling maze of sights and sounds",
          "body":
              "Stalls filled with colorful produce, the air rich with the scent of spices and fresh flowers. Vendors called out their wares, and the crowd moved in a vibrant dance. It was a place of energy and life, where every visit promised something new.",
          "tags": ["market", "vibrant", "life"],
          "reactions": {"likes": 1165, "dislikes": 5},
          "views": 3654,
          "userId": 118
        },
        {
          "id": 168,
          "title": "The abandoned mansion loomed on the hill",
          "body":
              "Its once-grand facade now crumbling and overgrown with ivy. It was a place of mystery and melancholy, a relic of a past age. Inside, dust-covered furniture and faded portraits hinted at stories long forgotten, waiting to be discovered.",
          "tags": ["mansion", "mystery", "history"],
          "reactions": {"likes": 1119, "dislikes": 25},
          "views": 1652,
          "userId": 110
        },
        {
          "id": 169,
          "title": "The train journey took him through diverse landscapes",
          "body":
              "From bustling cities to serene countryside. Each view from the window was a snapshot of life, a moving picture of the world outside. The rhythmic clatter of the tracks and the gentle sway of the carriage created a meditative experience.",
          "tags": ["train", "journey", "landscape"],
          "reactions": {"likes": 885, "dislikes": 23},
          "views": 1161,
          "userId": 18
        },
        {
          "id": 170,
          "title": "The small village was nestled in a valley",
          "body":
              "Surrounded by rolling hills and lush greenery. It was a place where time seemed to slow down, where everyone knew each other by name. The village was a tight-knit community, its traditions and stories passed down through generations.",
          "tags": ["village", "community", "tradition"],
          "reactions": {"likes": 772, "dislikes": 17},
          "views": 4127,
          "userId": 208
        },
        {
          "id": 171,
          "title": "The library was a haven for book lovers",
          "body":
              "Rows upon rows of books, each holding a world of knowledge and imagination. The scent of old paper and the quiet rustle of pages created an atmosphere of calm and inspiration. It was a place where stories came to life and minds were set free.",
          "tags": ["library", "books", "knowledge"],
          "reactions": {"likes": 67, "dislikes": 28},
          "views": 200,
          "userId": 46
        },
        {
          "id": 172,
          "title": "The meadow was awash with wildflowers",
          "body":
              "A kaleidoscope of colors under the bright summer sun. Bees buzzed from bloom to bloom, and the air was filled with the sweet scent of flowers. It was a place of pure joy and natural beauty, where one could lose themselves in the simple wonders of the world.",
          "tags": ["meadow", "flowers", "nature"],
          "reactions": {"likes": 1310, "dislikes": 1},
          "views": 4710,
          "userId": 51
        },
        {
          "id": 173,
          "title": "He sat at the piano, fingers poised over the keys",
          "body":
              "The room was silent, waiting for the first note. As he played, the music flowed, filling the space with melody and emotion. Each piece was a journey, a story told through sound, transporting listeners to places both familiar and unknown.",
          "tags": ["piano", "music", "emotion"],
          "reactions": {"likes": 650, "dislikes": 44},
          "views": 1505,
          "userId": 175
        },
        {
          "id": 174,
          "title": "The farmhouse kitchen was a hub of activity",
          "body":
              "Pots clanged, and the air was thick with the aroma of home-cooked meals. Family members bustled about, preparing food and sharing stories. It was a place of warmth and togetherness, where traditions were honored and memories were made.",
          "tags": ["kitchen", "family", "tradition"],
          "reactions": {"likes": 129, "dislikes": 18},
          "views": 473,
          "userId": 198
        },
        {
          "id": 175,
          "title": "The mountain lake was a mirror",
          "body":
              "Reflecting the snow-capped peaks and clear blue sky. The water was crystal clear, inviting and serene. It was a place of tranquility, where one could sit on the shore and lose themselves in the beauty of nature's perfection.",
          "tags": ["lake", "mountain", "serenity"],
          "reactions": {"likes": 1489, "dislikes": 48},
          "views": 4102,
          "userId": 128
        },
        {
          "id": 176,
          "title": "The city's historic district was a blend of old and new",
          "body":
              "Cobblestone streets and centuries-old buildings stood alongside modern cafes and boutiques. It was a place where history met contemporary life, creating a unique and vibrant atmosphere. Every corner had a story to tell, a piece of the past woven into the present.",
          "tags": ["city", "history", "vibrant"],
          "reactions": {"likes": 1015, "dislikes": 35},
          "views": 1206,
          "userId": 80
        },
        {
          "id": 177,
          "title": "The library's grand reading room",
          "body":
              "Was a sanctuary of knowledge and quiet. High ceilings and towering shelves filled with books created a majestic space. Here, scholars and dreamers alike could find inspiration, lose themselves in stories, and explore the vast realms of human thought.",
          "tags": ["library", "knowledge", "inspiration"],
          "reactions": {"likes": 793, "dislikes": 24},
          "views": 966,
          "userId": 112
        },
        {
          "id": 178,
          "title": "The beach at sunset was a sight to behold",
          "body":
              "The sky transformed into a canvas of vibrant colors, each wave catching the light in a dance of gold and crimson. Couples strolled along the shore, hand in hand, as children played at the water's edge. It was a moment of pure beauty, a day ending with a promise of tomorrow.",
          "tags": ["beach", "sunset", "beauty"],
          "reactions": {"likes": 174, "dislikes": 30},
          "views": 197,
          "userId": 201
        },
        {
          "id": 179,
          "title": "The old theater was a relic of a glamorous past",
          "body":
              "Its ornate decorations and grand stage spoke of a time when it was the heart of the city's cultural scene. Even in its faded glory, it retained a charm that drew visitors in, sparking imaginations and whispering tales of performances long past.",
          "tags": ["theater", "history", "culture"],
          "reactions": {"likes": 1128, "dislikes": 1},
          "views": 4973,
          "userId": 83
        },
        {
          "id": 180,
          "title": "The garden was a sanctuary",
          "body":
              "A place where she could escape the stresses of daily life. Surrounded by greenery and the sound of birdsong, she found peace and solace. Each plant, each bloom was a testament to her care and love, a living tapestry of colors and scents.",
          "tags": ["garden", "peace", "sanctuary"],
          "reactions": {"likes": 282, "dislikes": 42},
          "views": 704,
          "userId": 195
        },
        {
          "id": 181,
          "title": "The bookshop was a treasure trove",
          "body":
              "Every shelf crammed with stories waiting to be discovered. The scent of old books and the quiet atmosphere created a haven for book lovers. It was a place where time stood still, and one could lose themselves in the magic of reading.",
          "tags": ["bookshop", "books", "magic"],
          "reactions": {"likes": 1231, "dislikes": 10},
          "views": 2367,
          "userId": 36
        },
        {
          "id": 182,
          "title": "The orchard was in full bloom",
          "body":
              "Rows of fruit trees stood adorned with delicate blossoms, their petals falling like confetti in the gentle breeze. The air was fragrant with the promise of a bountiful harvest, and the soft hum of bees added a musical backdrop to the idyllic scene.",
          "tags": ["orchard", "blossom", "nature"],
          "reactions": {"likes": 565, "dislikes": 16},
          "views": 2732,
          "userId": 44
        },
        {
          "id": 183,
          "title": "The bustling marketplace",
          "body":
              "Was a sensory overload of colors, sounds, and scents. Vendors called out their wares, and the crowd moved in a vibrant dance. Fresh produce, handmade crafts, and exotic spices filled the stalls, each one a testament to the rich culture and community spirit.",
          "tags": ["marketplace", "vibrant", "community"],
          "reactions": {"likes": 795, "dislikes": 11},
          "views": 798,
          "userId": 2
        },
        {
          "id": 184,
          "title": "The old journal revealed secrets of the past",
          "body":
              "Its pages filled with handwritten notes, sketches, and pressed flowers. It was a treasure trove of memories, a window into the life of its owner. Each entry told a story, offering glimpses into moments of joy, sorrow, and everyday life from a different time.",
          "tags": ["journal", "memories", "secrets"],
          "reactions": {"likes": 589, "dislikes": 16},
          "views": 670,
          "userId": 185
        },
        {
          "id": 185,
          "title": "The beach was a paradise",
          "body":
              "Golden sands stretched as far as the eye could see, meeting the turquoise waters of the ocean. Palm trees swayed gently in the breeze, and the sound of waves crashing against the shore was a soothing symphony. It was a place where worries melted away under the sun.",
          "tags": ["beach", "paradise", "ocean"],
          "reactions": {"likes": 783, "dislikes": 42},
          "views": 1303,
          "userId": 201
        },
        {
          "id": 186,
          "title": "The village fair was in full swing",
          "body":
              "Brightly colored tents and booths lined the streets, offering games, food, and crafts. Children ran about with cotton candy, while adults enjoyed the live music and entertainment. It was a day of fun and community spirit, where everyone came together to celebrate.",
          "tags": ["fair", "celebration", "community"],
          "reactions": {"likes": 727, "dislikes": 47},
          "views": 2308,
          "userId": 26
        },
        {
          "id": 187,
          "title": "The cabin in the woods",
          "body":
              "Was a perfect retreat from the hustle and bustle of everyday life. Surrounded by towering trees and the sounds of nature, it offered peace and solitude. Inside, the rustic charm of wooden beams and a roaring fireplace made it a cozy haven.",
          "tags": ["cabin", "woods", "retreat"],
          "reactions": {"likes": 718, "dislikes": 4},
          "views": 1279,
          "userId": 11
        },
        {
          "id": 188,
          "title": "The art gallery was a feast for the eyes",
          "body":
              "Each piece a masterpiece, telling a story through color, form, and texture. Visitors moved from one exhibit to another, lost in contemplation. The gallery was a place of inspiration and creativity, where art came alive and sparked the imagination.",
          "tags": ["art", "gallery", "inspiration"],
          "reactions": {"likes": 362, "dislikes": 44},
          "views": 4619,
          "userId": 162
        },
        {
          "id": 189,
          "title": "The evening concert was magical",
          "body":
              "Under the starry sky, the music flowed, captivating the audience. The performers poured their hearts into each note, creating a tapestry of sound that resonated with everyone present. It was a night of shared joy and musical wonder.",
          "tags": ["concert", "music", "magic"],
          "reactions": {"likes": 890, "dislikes": 29},
          "views": 1606,
          "userId": 167
        },
        {
          "id": 190,
          "title": "The farm was a bustling hub of activity",
          "body":
              "Animals roamed the fields, and the air was filled with the sounds of clucking chickens and lowing cows. Crops swayed in the breeze, promising a good harvest. It was a place of hard work and satisfaction, where the rhythm of life followed the seasons.",
          "tags": ["farm", "activity", "life"],
          "reactions": {"likes": 463, "dislikes": 13},
          "views": 488,
          "userId": 188
        },
        {
          "id": 191,
          "title": "The mountain trail was challenging",
          "body":
              "But the views from the top were breathtaking. Each step was a test of endurance, but reaching the summit made it all worthwhile. The panorama of rugged peaks and valleys stretched out before him, a reward for his determination and effort.",
          "tags": ["mountain", "trail", "challenge"],
          "reactions": {"likes": 62, "dislikes": 15},
          "views": 4432,
          "userId": 134
        },
        {
          "id": 192,
          "title": "The hidden cove was a secret paradise",
          "body":
              "Tucked away from the main beach, it was a tranquil spot where crystal-clear waters met soft, white sands. The sound of gentle waves and the occasional call of a seagull created a serene atmosphere. It was a perfect place to escape and soak in the natural beauty.",
          "tags": ["cove", "paradise", "serenity"],
          "reactions": {"likes": 1050, "dislikes": 17},
          "views": 1535,
          "userId": 183
        },
        {
          "id": 193,
          "title": "The grand ballroom",
          "body":
              "Was a scene of elegance and grandeur. Crystal chandeliers hung from the ceiling, casting a warm glow over the polished marble floor. Guests in their finest attire danced to the orchestra, their movements a graceful dance of opulence and refinement.",
          "tags": ["ballroom", "elegance", "grandeur"],
          "reactions": {"likes": 977, "dislikes": 7},
          "views": 1648,
          "userId": 82
        },
        {
          "id": 194,
          "title": "The ancient castle stood atop the hill",
          "body":
              "Its towering walls and turrets a testament to a rich history. Ivy crept up its stone facade, and inside, the halls echoed with the footsteps of those long gone. Each room held artifacts and stories, making it a living museum of the past.",
          "tags": ["castle", "history", "ancient"],
          "reactions": {"likes": 978, "dislikes": 4},
          "views": 1103,
          "userId": 145
        },
        {
          "id": 195,
          "title": "The river flowed gently through the valley",
          "body":
              "Its waters sparkling in the sunlight. Along its banks, wildflowers bloomed, and birds sang from the trees. It was a place of natural beauty and calm, where one could sit by the water's edge and feel at peace with the world.",
          "tags": ["river", "valley", "calm"],
          "reactions": {"likes": 152, "dislikes": 40},
          "views": 4379,
          "userId": 181
        },
        {
          "id": 196,
          "title": "The bustling harbor was alive with activity",
          "body":
              "Ships of all sizes came and went, and the air was filled with the sound of seagulls and the smell of the sea. Fishermen unloaded their catch, while tourists explored the nearby shops and cafes. It was a vibrant, dynamic place where life never stood still.",
          "tags": ["harbor", "activity", "vibrant"],
          "reactions": {"likes": 509, "dislikes": 48},
          "views": 1715,
          "userId": 164
        },
        {
          "id": 197,
          "title": "The summer festival",
          "body":
              "Transformed the town into a carnival of lights and sounds. Streets were lined with stalls offering food, games, and crafts. Music filled the air, and the laughter of children added to the festive atmosphere. It was a time of joy and community spirit, where everyone came together to celebrate.",
          "tags": ["festival", "summer", "celebration"],
          "reactions": {"likes": 167, "dislikes": 20},
          "views": 187,
          "userId": 150
        },
        {
          "id": 198,
          "title": "The autumn forest",
          "body":
              "Was a riot of color, with leaves in shades of red, orange, and yellow. The crisp air and the crunch of leaves underfoot made it a perfect place for a walk. Each tree seemed to tell its own story, and the changing seasons added a sense of wonder to the landscape.",
          "tags": ["forest", "autumn", "color"],
          "reactions": {"likes": 67, "dislikes": 4},
          "views": 908,
          "userId": 156
        },
        {
          "id": 199,
          "title": "The old lighthouse",
          "body":
              "Had stood for centuries, its light guiding sailors safely to shore. Perched on a rocky cliff, it faced the relentless waves with steadfast determination. Inside, the spiral staircase led to a room with a panoramic view of the ocean, a reminder of the lighthouse's vital role.",
          "tags": ["lighthouse", "ocean", "history"],
          "reactions": {"likes": 430, "dislikes": 41},
          "views": 3875,
          "userId": 83
        },
        {
          "id": 200,
          "title": "The snow-covered village",
          "body":
              "Looked like a scene from a postcard. Smoke curled from chimneys, and the streets were lined with festive decorations. Children played in the snow, building snowmen and sledding down hills. It was a picture of warmth and community spirit, despite the cold weather.",
          "tags": ["village", "snow", "community"],
          "reactions": {"likes": 967, "dislikes": 3},
          "views": 3600,
          "userId": 127
        },
        {
          "id": 201,
          "title": "The botanical garden",
          "body":
              "Was a haven of peace and beauty. Pathways meandered through beds of exotic plants and flowers, each one labeled with its name and origin. The scent of blooms filled the air, and the gentle sound of water features added to the tranquil atmosphere.",
          "tags": ["garden", "botanical", "beauty"],
          "reactions": {"likes": 651, "dislikes": 29},
          "views": 2249,
          "userId": 93
        },
        {
          "id": 202,
          "title": "The starlit sky dazzled above the desert",
          "body":
              "Each twinkling light seemed to tell a story of its own, as if the universe itself was whispering secrets. The vastness of space stretched out endlessly, filling the night with a sense of wonder and possibility. It was a sight that made one feel both small and connected to something greater.",
          "tags": ["desert", "stars", "wonder"],
          "reactions": {"likes": 1275, "dislikes": 7},
          "views": 3157,
          "userId": 159
        },
        {
          "id": 203,
          "title": "The coastal cliffs towered over the crashing waves",
          "body":
              "Their rugged beauty a testament to the power of the ocean. Seabirds circled overhead, their cries carried by the salty breeze. Down below, tide pools teemed with life, hidden gems waiting to be discovered by adventurous explorers. It was a place where land and sea converged in a breathtaking display of nature's grandeur.",
          "tags": ["coast", "cliffs", "nature"],
          "reactions": {"likes": 230, "dislikes": 32},
          "views": 3011,
          "userId": 102
        },
        {
          "id": 204,
          "title": "The quaint village square bustled with activity",
          "body":
              "Market stalls lined the cobblestone streets, offering fresh produce, handmade crafts, and local delicacies. Children played games in the fountain, their laughter mingling with the chatter of residents and tourists alike. It was a scene straight out of a storybook, where time seemed to stand still amidst the timeless charm of the village.",
          "tags": ["village", "square", "charm"],
          "reactions": {"likes": 20, "dislikes": 14},
          "views": 532,
          "userId": 19
        },
        {
          "id": 205,
          "title": "The ancient temple stood silent in the jungle",
          "body":
              "Its weathered stone walls adorned with intricate carvings and statues of forgotten gods. Vines and moss clung to the ruins, reclaiming them for nature. Despite the passage of centuries, there was a palpable sense of reverence and spirituality in the air, as if the spirits of the past still lingered among the crumbling stones.",
          "tags": ["temple", "jungle", "spirituality"],
          "reactions": {"likes": 248, "dislikes": 44},
          "views": 2561,
          "userId": 174
        },
        {
          "id": 206,
          "title": "The mountain stream sparkled in the sunlight",
          "body":
              "Its crystal-clear waters bubbling over smooth rocks and pebbles. Tall trees shaded the banks, their leaves rustling in the gentle breeze. The air was fresh and invigorating, carrying with it the scent of pine and wildflowers. It was a scene of pure serenity, a hidden gem tucked away in the heart of the wilderness.",
          "tags": ["mountain", "stream", "serenity"],
          "reactions": {"likes": 1193, "dislikes": 13},
          "views": 4993,
          "userId": 142
        },
        {
          "id": 207,
          "title": "The bustling city market was a melting pot of cultures",
          "body":
              "Vendors from around the world offered spices, textiles, and handicrafts, each item a reflection of its creator's heritage. The air was filled with the aroma of exotic foods cooking on open grills, tempting passersby with their savory scents. It was a vibrant celebration of diversity, where strangers became friends over shared experiences and shared meals.",
          "tags": ["city", "market", "diversity"],
          "reactions": {"likes": 1391, "dislikes": 29},
          "views": 2741,
          "userId": 157
        },
        {
          "id": 208,
          "title": "The old oak tree stood sentinel in the meadow",
          "body":
              "Its gnarled branches reaching towards the sky, a silent witness to the passage of time. Birds nested in its leafy canopy, and squirrels darted among its roots. Beneath its shade, wildflowers bloomed, adding splashes of color to the verdant landscape. It was a symbol of strength and resilience, a constant presence in an ever-changing world.",
          "tags": ["oak", "meadow", "strength"],
          "reactions": {"likes": 438, "dislikes": 10},
          "views": 3943,
          "userId": 61
        },
        {
          "id": 209,
          "title": "The traditional tea house exuded warmth and hospitality",
          "body":
              "Guests were greeted with a smile and offered a seat at low wooden tables. The aroma of freshly brewed tea filled the air, mingling with the soft sounds of conversation and laughter. It was a place of relaxation and connection, where strangers became friends over shared cups of tea and shared stories.",
          "tags": ["tea", "hospitality", "connection"],
          "reactions": {"likes": 369, "dislikes": 50},
          "views": 2207,
          "userId": 155
        },
        {
          "id": 210,
          "title": "The rural farmstead was a picture of idyllic simplicity",
          "body":
              "Fields of golden wheat stretched to the horizon, swaying in the gentle breeze. Cows grazed lazily in lush green pastures, and chickens pecked at the ground in search of insects. The air was filled with the scent of fresh hay and the distant sound of a tractor chugging along. It was a scene straight out of a pastoral painting, a timeless reminder of the beauty of rural life.",
          "tags": ["farmstead", "rural", "simplicity"],
          "reactions": {"likes": 939, "dislikes": 32},
          "views": 4455,
          "userId": 180
        },
        {
          "id": 211,
          "title": "The majestic waterfall cascaded down the cliffside",
          "body":
              "Its thunderous roar drowned out all other sounds, filling the air with energy and vitality. Mist rose from the churning pool below, creating rainbows in the sunlight. Around the waterfall, lush vegetation thrived, nourished by the constant spray. It was a spectacle of nature's power and beauty, a sight that left all who beheld it in awe.",
          "tags": ["waterfall", "majestic", "nature"],
          "reactions": {"likes": 412, "dislikes": 21},
          "views": 2924,
          "userId": 12
        },
        {
          "id": 212,
          "title": "The ancient ruins whispered tales of the past",
          "body":
              "Stone columns stood like silent sentinels, their weathered surfaces bearing the scars of time. In the midst of the ruins, a lone statue remained, its features worn but still dignified. It was a place where history came alive, where the echoes of ancient civilizations lingered in the air.",
          "tags": ["ruins", "history", "ancient"],
          "reactions": {"likes": 603, "dislikes": 38},
          "views": 3061,
          "userId": 130
        },
        {
          "id": 213,
          "title": "The sun-dappled forest was alive with the chatter of birds",
          "body":
              "Tall trees stretched towards the sky, their branches forming a canopy overhead. Shafts of golden light filtered through the leaves, illuminating the forest floor in a patchwork of light and shadow. It was a place of tranquility and beauty, where one could lose themselves in the wonders of nature.",
          "tags": ["forest", "nature", "tranquility"],
          "reactions": {"likes": 593, "dislikes": 6},
          "views": 3935,
          "userId": 122
        },
        {
          "id": 214,
          "title": "The coastal town was a haven for seafood lovers",
          "body":
              "Fishermen returned from sea with their catch of the day, which was then sold at the bustling fish market. Restaurants lined the waterfront, offering freshly prepared dishes that showcased the bounty of the ocean. It was a place where the salty tang of the sea lingered in the air and every meal was a celebration of coastal living.",
          "tags": ["coastal", "seafood", "food"],
          "reactions": {"likes": 7, "dislikes": 5},
          "views": 12,
          "userId": 48
        },
        {
          "id": 215,
          "title": "The ancient cathedral soared towards the heavens",
          "body":
              "Its towering spires reached for the sky, a testament to the faith and craftsmanship of generations past. Stained glass windows bathed the interior in a kaleidoscope of colors, and the air was filled with the soft murmur of prayers. It was a place of awe and reverence, where the divine felt close at hand.",
          "tags": ["cathedral", "faith", "architecture"],
          "reactions": {"likes": 470, "dislikes": 41},
          "views": 2301,
          "userId": 47
        },
        {
          "id": 216,
          "title": "The vibrant street market buzzed with energy",
          "body":
              "Stalls overflowed with fruits, vegetables, and spices from around the world, creating a riot of color and scent. Street performers entertained the crowds with music and dance, while vendors called out their wares in a cacophony of voices. It was a place where the pulse of the city could be felt most keenly, a melting pot of cultures and commerce.",
          "tags": ["market", "street", "vibrant"],
          "reactions": {"likes": 1114, "dislikes": 17},
          "views": 3147,
          "userId": 6
        },
        {
          "id": 217,
          "title": "The old windmill stood as a symbol of bygone days",
          "body":
              "Its weathered sails creaked and groaned in the wind, a reminder of a time when such structures dotted the countryside. Inside, the machinery lay dormant, its purpose long forgotten. Yet the windmill remained a beloved landmark, a link to the past in an ever-changing world.",
          "tags": ["windmill", "history", "countryside"],
          "reactions": {"likes": 2, "dislikes": 0},
          "views": 36,
          "userId": 120
        },
        {
          "id": 218,
          "title": "The bustling city street was a feast for the senses",
          "body":
              "Neon lights flashed, and the air was thick with the scent of street food cooking on open grills. Pedestrians jostled for space on crowded sidewalks, their voices blending into a vibrant symphony of urban life. It was a place where every corner held a new adventure, where the pulse of the city could be felt in every heartbeat.",
          "tags": ["city", "street", "urban"],
          "reactions": {"likes": 212, "dislikes": 15},
          "views": 1903,
          "userId": 2
        },
        {
          "id": 219,
          "title": "The rolling hills stretched to the horizon",
          "body":
              "Dotted with sheep grazing peacefully in the meadows. Fences crisscrossed the landscape, dividing fields of green and gold. In the distance, a lone farmhouse stood silhouetted against the sky. It was a scene of pastoral tranquility, where time seemed to slow and the worries of the world faded away.",
          "tags": ["hills", "pastoral", "tranquility"],
          "reactions": {"likes": 1333, "dislikes": 0},
          "views": 2460,
          "userId": 184
        },
        {
          "id": 220,
          "title": "The quaint village inn welcomed weary travelers",
          "body":
              "Its cozy rooms and warm hearth offered respite from the road. In the tavern below, locals gathered to share stories over pints of ale, their laughter echoing through the rafters. It was a place where strangers became friends and memories were made, a home away from home for those in need of rest.",
          "tags": ["village", "inn", "hospitality"],
          "reactions": {"likes": 918, "dislikes": 50},
          "views": 1939,
          "userId": 174
        },
        {
          "id": 221,
          "title": "The ancient forest was shrouded in mystery",
          "body":
              "Moss-covered trees loomed overhead, their twisted branches reaching towards the sky like skeletal fingers. The forest floor was carpeted in ferns and fallen leaves, and shafts of sunlight pierced the canopy in ethereal beams. It was a place where legends were born and adventurers dared to tread, drawn by the promise of untold treasures hidden in its depths.",
          "tags": ["forest", "mystery", "adventure"],
          "reactions": {"likes": 159, "dislikes": 7},
          "views": 865,
          "userId": 61
        },
        {
          "id": 222,
          "title": "The coastal cliffs provided a breathtaking view",
          "body":
              "Stretching for miles along the rugged coastline, the cliffs rose majestically from the crashing waves below. Seabirds circled overhead, riding the ocean breezes, while below, hidden coves and sea caves beckoned adventurous explorers. It was a place where the raw power of nature met the beauty of the sea.",
          "tags": ["coastal", "cliffs", "view"],
          "reactions": {"likes": 532, "dislikes": 50},
          "views": 4134,
          "userId": 163
        },
        {
          "id": 223,
          "title": "The bustling city square was the heart of urban life",
          "body":
              "Surrounded by historic buildings and modern skyscrapers, the square buzzed with activity day and night. Street performers entertained crowds, while vendors sold their wares from colorful stalls. It was a place where cultures collided and history was written with every step.",
          "tags": ["city", "square", "urban"],
          "reactions": {"likes": 60, "dislikes": 12},
          "views": 127,
          "userId": 199
        },
        {
          "id": 224,
          "title":
              "The ancient aqueducts stood as a testament to engineering prowess",
          "body":
              "Stretching across the landscape, the aqueducts carried water from distant sources to the bustling cities of old. Their arches soared high above the ground, a marvel of Roman ingenuity and craftsmanship. Even in ruins, they remained a symbol of civilization's triumph over nature.",
          "tags": ["aqueducts", "engineering", "history"],
          "reactions": {"likes": 468, "dislikes": 9},
          "views": 4614,
          "userId": 170
        },
        {
          "id": 225,
          "title": "The remote mountain village was a hidden gem",
          "body":
              "Nestled among towering peaks and lush forests, the village seemed untouched by time. Its cobblestone streets and ancient buildings whispered tales of a simpler era, while the surrounding landscape offered endless opportunities for adventure. It was a place where modern life felt a world away.",
          "tags": ["mountain", "village", "remote"],
          "reactions": {"likes": 1035, "dislikes": 45},
          "views": 3022,
          "userId": 134
        },
        {
          "id": 226,
          "title": "The tranquil lake mirrored the surrounding mountains",
          "body":
              "Its glassy surface reflecting the blue sky above and the green trees along its shores. Ducks glided across the water, leaving ripples in their wake, while fishermen cast their lines from the wooden pier. It was a scene of timeless beauty, where nature's harmony was on full display.",
          "tags": ["lake", "tranquil", "nature"],
          "reactions": {"likes": 22, "dislikes": 0},
          "views": 1913,
          "userId": 182
        },
        {
          "id": 227,
          "title": "The historic castle loomed over the town below",
          "body":
              "Its stone walls and imposing towers a reminder of a bygone era. Inside, tapestries lined the walls, and suits of armor stood sentinel in the grand hall. From the ramparts, one could see for miles in every direction, a view that spoke of centuries of power and prestige.",
          "tags": ["castle", "history", "fortress"],
          "reactions": {"likes": 226, "dislikes": 7},
          "views": 423,
          "userId": 7
        },
        {
          "id": 228,
          "title": "The bustling harbor was a hive of activity",
          "body":
              "Ships of all sizes came and went, their colorful sails billowing in the wind. Fishermen unloaded their catch, while dockworkers bustled about, loading and unloading cargo. It was a place where the rhythm of life was dictated by the tides, and every day brought new adventures on the high seas.",
          "tags": ["harbor", "activity", "sea"],
          "reactions": {"likes": 158, "dislikes": 46},
          "views": 4339,
          "userId": 81
        },
        {
          "id": 229,
          "title": "The charming cottage nestled in a sun-dappled clearing",
          "body":
              "Surrounded by a riot of flowers and greenery, the cottage seemed straight out of a fairy tale. Smoke curled from the chimney, and the sound of birdsong filled the air. It was a place of peace and tranquility, where time moved at its own pace.",
          "tags": ["cottage", "charming", "peace"],
          "reactions": {"likes": 352, "dislikes": 30},
          "views": 3264,
          "userId": 138
        },
        {
          "id": 230,
          "title": "The bustling market square was a melting pot of cultures",
          "body":
              "Vendors from far and wide gathered to sell their goods, their voices blending into a cacophony of languages and dialects. Spices, textiles, and handicrafts filled the stalls, creating a riot of color and scent. It was a place where the world came together, united by the shared experience of trade and commerce.",
          "tags": ["market", "culture", "trade"],
          "reactions": {"likes": 1234, "dislikes": 9},
          "views": 3774,
          "userId": 29
        },
        {
          "id": 231,
          "title":
              "The ancient forest whispered secrets to those who dared to listen",
          "body":
              "Tall trees swayed in the breeze, their branches reaching towards the sky like fingers seeking the heavens. Moss-covered stones dotted the forest floor, marking the passage of time. It was a place of magic and mystery, where legends walked among the shadows.",
          "tags": ["forest", "ancient", "mystery"],
          "reactions": {"likes": 1315, "dislikes": 4},
          "views": 3719,
          "userId": 175
        },
        {
          "id": 232,
          "title": "The sun-kissed vineyard stretched across the hills",
          "body":
              "Rows of grapevines marched in perfect formation, their leaves rustling in the gentle breeze. The air was heavy with the scent of ripe fruit, and the distant sound of laughter echoed through the valley. It was a place where time seemed to stand still, and every sip of wine was a toast to the beauty of life.",
          "tags": ["vineyard", "hills", "wine"],
          "reactions": {"likes": 1104, "dislikes": 35},
          "views": 2884,
          "userId": 89
        },
        {
          "id": 233,
          "title": "The historic town square was a living museum",
          "body":
              "Surrounded by centuries-old buildings, the square bore witness to generations of history. A statue of a local hero stood at its center, immortalized in bronze. Cafes and shops lined the cobblestone streets, each one a testament to the enduring spirit of the town.",
          "tags": ["town", "square", "history"],
          "reactions": {"likes": 1046, "dislikes": 12},
          "views": 1576,
          "userId": 172
        },
        {
          "id": 234,
          "title": "The tranquil pond was a haven for wildlife",
          "body":
              "Water lilies floated serenely on the surface, their delicate blooms a splash of color against the greenery. Ducks paddled lazily in the shallows, while fish darted beneath the surface. It was a place where nature thrived, untouched by the chaos of the world beyond.",
          "tags": ["pond", "wildlife", "tranquil"],
          "reactions": {"likes": 261, "dislikes": 37},
          "views": 4219,
          "userId": 189
        },
        {
          "id": 235,
          "title": "The bustling city market was a feast for the senses",
          "body":
              "Stalls overflowed with exotic spices, fresh produce, and handmade crafts from around the world. The air was thick with the scent of roasting coffee and sizzling street food. It was a place where the pulse of the city could be felt most keenly, where every corner held a new adventure.",
          "tags": ["city", "market", "senses"],
          "reactions": {"likes": 1457, "dislikes": 15},
          "views": 3074,
          "userId": 88
        },
        {
          "id": 236,
          "title": "The picturesque waterfall cascaded down the rocky cliffs",
          "body":
              "Its pristine waters shimmered in the sunlight, creating rainbows in the mist. Ferns and moss clung to the rocks, adding to the sense of natural beauty. It was a place where the power of nature was on full display, where every drop of water was a testament to the earth's resilience.",
          "tags": ["waterfall", "picturesque", "nature"],
          "reactions": {"likes": 666, "dislikes": 33},
          "views": 2960,
          "userId": 35
        },
        {
          "id": 237,
          "title": "The cozy cabin nestled in the snowy mountains",
          "body":
              "Smoke curled from the chimney, and the sound of crackling logs filled the air. Outside, snowflakes drifted lazily to the ground, transforming the landscape into a winter wonderland. It was a place where warmth and comfort awaited, a sanctuary from the cold embrace of winter.",
          "tags": ["cabin", "mountains", "snowy"],
          "reactions": {"likes": 1303, "dislikes": 27},
          "views": 4934,
          "userId": 178
        },
        {
          "id": 238,
          "title": "The ancient library was a treasure trove of knowledge",
          "body":
              "Books lined the shelves from floor to ceiling, their leather-bound covers worn with age. Dust motes danced in the sunlight that streamed through stained glass windows. It was a place where scholars and seekers alike came to lose themselves in the wisdom of the ages.",
          "tags": ["library", "ancient", "knowledge"],
          "reactions": {"likes": 491, "dislikes": 24},
          "views": 2605,
          "userId": 192
        },
        {
          "id": 239,
          "title": "The vibrant city park was a green oasis",
          "body":
              "Towering trees provided shade from the sun, while colorful flowers bloomed in every corner. Children laughed and played on the playground, while couples strolled hand in hand along winding paths. It was a place where the beauty of nature and the energy of the city came together in perfect harmony.",
          "tags": ["park", "city", "oasis"],
          "reactions": {"likes": 623, "dislikes": 8},
          "views": 1466,
          "userId": 83
        },
        {
          "id": 240,
          "title": "The rustic farmhouse stood amidst fields of golden wheat",
          "body":
              "Its weathered facade bore the marks of countless seasons, yet it stood strong and proud against the elements. Chickens scratched in the dirt, and cows grazed lazily in the pasture. It was a place where the simple pleasures of life were cherished, and hard work was its own reward.",
          "tags": ["farmhouse", "rustic", "fields"],
          "reactions": {"likes": 117, "dislikes": 42},
          "views": 2041,
          "userId": 205
        },
        {
          "id": 241,
          "title": "The sunlit garden was a riot of color",
          "body":
              "Flowers of every hue bloomed in profusion, their petals kissed by the golden rays of the sun. Bees buzzed from blossom to blossom, gathering nectar for their hive. It was a place where beauty and life abounded, where the passage of time was marked by the changing seasons.",
          "tags": ["garden", "sunlit", "colorful"],
          "reactions": {"likes": 96, "dislikes": 28},
          "views": 276,
          "userId": 90
        },
        {
          "id": 242,
          "title": "The serene meadow stretched to the horizon",
          "body":
              "Dotted with wildflowers and bathed in golden sunlight, the meadow was a picture of tranquility. Butterflies flitted from bloom to bloom, while bees hummed lazily in the warm air. It was a place where time seemed to stand still, a sanctuary from the chaos of the world.",
          "tags": ["meadow", "serene", "tranquility"],
          "reactions": {"likes": 142, "dislikes": 34},
          "views": 1197,
          "userId": 60
        },
        {
          "id": 243,
          "title": "The quaint village church stood as a beacon of faith",
          "body":
              "Its steeple reached towards the heavens, a symbol of hope and salvation. Inside, shafts of sunlight streamed through stained glass windows, casting colorful patterns on the worn wooden pews. It was a place where the weary found solace and the lost found direction.",
          "tags": ["church", "village", "faith"],
          "reactions": {"likes": 1040, "dislikes": 46},
          "views": 3368,
          "userId": 150
        },
        {
          "id": 244,
          "title": "The ancient ruins were a window into the past",
          "body":
              "Stone pillars stood in silent testimony to the glory of civilizations long gone. Crumbling walls bore the scars of battles fought and empires risen and fallen. It was a place where history whispered its secrets to those who dared to listen.",
          "tags": ["ruins", "history", "ancient"],
          "reactions": {"likes": 846, "dislikes": 36},
          "views": 4333,
          "userId": 58
        },
        {
          "id": 245,
          "title": "The tranquil river wound its way through the countryside",
          "body":
              "Its waters flowed lazily, reflecting the blue sky above and the green trees along its banks. Fish darted beneath the surface, and dragonflies flitted above the reeds. It was a place where one could escape the noise of the world and find peace in the gentle rhythm of nature.",
          "tags": ["river", "tranquil", "countryside"],
          "reactions": {"likes": 891, "dislikes": 25},
          "views": 1526,
          "userId": 196
        },
        {
          "id": 246,
          "title": "The bustling city streets were alive with energy",
          "body":
              "People hurried along the sidewalks, their footsteps echoing off the towering buildings. Cars honked and sirens wailed, creating a symphony of urban sounds. It was a place where dreams were chased and fortunes made, where every corner held the promise of adventure.",
          "tags": ["city", "streets", "energy"],
          "reactions": {"likes": 254, "dislikes": 37},
          "views": 1906,
          "userId": 88
        },
        {
          "id": 247,
          "title": "The cozy bookstore was a haven for book lovers",
          "body":
              "Shelves lined with books stretched from floor to ceiling, each one a portal to another world. The scent of paper and ink filled the air, and the sound of pages turning was like music to the ears. It was a place where imaginations soared and hearts found refuge.",
          "tags": ["bookstore", "books", "cozy"],
          "reactions": {"likes": 1139, "dislikes": 11},
          "views": 2054,
          "userId": 132
        },
        {
          "id": 248,
          "title": "The vibrant city skyline glittered in the night",
          "body":
              "Skyscrapers towered overhead, their lights twinkling like stars against the darkness. Below, the streets pulsed with life, as cars and pedestrians moved in a constant dance. It was a place where dreams took flight and the possibilities seemed endless.",
          "tags": ["city", "skyline", "night"],
          "reactions": {"likes": 849, "dislikes": 38},
          "views": 2109,
          "userId": 93
        },
        {
          "id": 249,
          "title": "The ancient temple stood as a testament to human ingenuity",
          "body":
              "Its intricate carvings and towering columns spoke of a time when gods walked among mortals. Inside, priests tended to sacred fires, their chants filling the air with reverence. It was a place where the divine felt close at hand, where prayers were offered and answered.",
          "tags": ["temple", "ancient", "faith"],
          "reactions": {"likes": 714, "dislikes": 6},
          "views": 3308,
          "userId": 149
        },
        {
          "id": 250,
          "title":
              "The peaceful village square was a gathering place for locals",
          "body":
              "Beneath the shade of a towering oak tree, villagers gathered to chat and share stories. Children played games on the cobblestone streets, while elders watched with fond smiles. It was a place where time seemed to move more slowly, and the simple joys of life were savored.",
          "tags": ["village", "square", "peaceful"],
          "reactions": {"likes": 67, "dislikes": 34},
          "views": 1836,
          "userId": 52
        },
        {
          "id": 251,
          "title": "The majestic waterfall thundered down the mountainside",
          "body":
              "Its waters cascading in a frothy torrent, sending mist into the air. Rainbows danced in the spray, adding to the spectacle of nature's power. It was a place where one could feel the heartbeat of the earth, a reminder of the awe-inspiring beauty of the natural world.",
          "tags": ["waterfall", "majestic", "nature"],
          "reactions": {"likes": 703, "dislikes": 33},
          "views": 867,
          "userId": 187
        }
      ],
      "total": 251,
      "skip": 0,
      "limit": 251
    };

    return (json['posts'] as List)
        .cast<_ResponseData>()
        .map(Post.fromJson)
        .toList();
  }

  static List<_ResponseData> getUsersRaw() {
    final dynamic json = {
      "users": [
        {
          "id": 1,
          "username": "emilys",
          "password": "emilyspass",
          "email": "emily.johnson@x.dummyjson.com",
          "firstName": "Emily",
          "lastName": "Johnson",
          "gender": "female",
          "image": "https://dummyjson.com/icon/emilys/128"
        },
        {
          "id": 2,
          "username": "michaelw",
          "password": "michaelwpass",
          "email": "michael.williams@x.dummyjson.com",
          "firstName": "Michael",
          "lastName": "Williams",
          "gender": "male",
          "image": "https://dummyjson.com/icon/michaelw/128"
        },
        {
          "id": 3,
          "username": "sophiab",
          "password": "sophiabpass",
          "email": "sophia.brown@x.dummyjson.com",
          "firstName": "Sophia",
          "lastName": "Brown",
          "gender": "female",
          "image": "https://dummyjson.com/icon/sophiab/128"
        },
        {
          "id": 4,
          "username": "jamesd",
          "password": "jamesdpass",
          "email": "james.davis@x.dummyjson.com",
          "firstName": "James",
          "lastName": "Davis",
          "gender": "male",
          "image": "https://dummyjson.com/icon/jamesd/128"
        },
        {
          "id": 5,
          "username": "emmaj",
          "password": "emmajpass",
          "email": "emma.miller@x.dummyjson.com",
          "firstName": "Emma",
          "lastName": "Miller",
          "gender": "female",
          "image": "https://dummyjson.com/icon/emmaj/128"
        },
        {
          "id": 6,
          "username": "oliviaw",
          "password": "oliviawpass",
          "email": "olivia.wilson@x.dummyjson.com",
          "firstName": "Olivia",
          "lastName": "Wilson",
          "gender": "female",
          "image": "https://dummyjson.com/icon/oliviaw/128"
        },
        {
          "id": 7,
          "username": "alexanderj",
          "password": "alexanderjpass",
          "email": "alexander.jones@x.dummyjson.com",
          "firstName": "Alexander",
          "lastName": "Jones",
          "gender": "male",
          "image": "https://dummyjson.com/icon/alexanderj/128"
        },
        {
          "id": 8,
          "username": "avat",
          "password": "avatpass",
          "email": "ava.taylor@x.dummyjson.com",
          "firstName": "Ava",
          "lastName": "Taylor",
          "gender": "female",
          "image": "https://dummyjson.com/icon/avat/128"
        },
        {
          "id": 9,
          "username": "ethanm",
          "password": "ethanmpass",
          "email": "ethan.martinez@x.dummyjson.com",
          "firstName": "Ethan",
          "lastName": "Martinez",
          "gender": "male",
          "image": "https://dummyjson.com/icon/ethanm/128"
        },
        {
          "id": 10,
          "username": "isabellad",
          "password": "isabelladpass",
          "email": "isabella.anderson@x.dummyjson.com",
          "firstName": "Isabella",
          "lastName": "Anderson",
          "gender": "female",
          "image": "https://dummyjson.com/icon/isabellad/128"
        },
        {
          "id": 11,
          "username": "liamg",
          "password": "liamgpass",
          "email": "liam.garcia@x.dummyjson.com",
          "firstName": "Liam",
          "lastName": "Garcia",
          "gender": "male",
          "image": "https://dummyjson.com/icon/liamg/128"
        },
        {
          "id": 12,
          "username": "miar",
          "password": "miarpass",
          "email": "mia.rodriguez@x.dummyjson.com",
          "firstName": "Mia",
          "lastName": "Rodriguez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/miar/128"
        },
        {
          "id": 13,
          "username": "noahh",
          "password": "noahhpass",
          "email": "noah.hernandez@x.dummyjson.com",
          "firstName": "Noah",
          "lastName": "Hernandez",
          "gender": "male",
          "image": "https://dummyjson.com/icon/noahh/128"
        },
        {
          "id": 14,
          "username": "charlottem",
          "password": "charlottempass",
          "email": "charlotte.lopez@x.dummyjson.com",
          "firstName": "Charlotte",
          "lastName": "Lopez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/charlottem/128"
        },
        {
          "id": 15,
          "username": "williamg",
          "password": "williamgpass",
          "email": "william.gonzalez@x.dummyjson.com",
          "firstName": "William",
          "lastName": "Gonzalez",
          "gender": "male",
          "image": "https://dummyjson.com/icon/williamg/128"
        },
        {
          "id": 16,
          "username": "averyp",
          "password": "averyppass",
          "email": "avery.perez@x.dummyjson.com",
          "firstName": "Avery",
          "lastName": "Perez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/averyp/128"
        },
        {
          "id": 17,
          "username": "evelyns",
          "password": "evelynspass",
          "email": "evelyn.sanchez@x.dummyjson.com",
          "firstName": "Evelyn",
          "lastName": "Sanchez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/evelyns/128"
        },
        {
          "id": 18,
          "username": "logant",
          "password": "logantpass",
          "email": "logan.torres@x.dummyjson.com",
          "firstName": "Logan",
          "lastName": "Torres",
          "gender": "male",
          "image": "https://dummyjson.com/icon/logant/128"
        },
        {
          "id": 19,
          "username": "abigailr",
          "password": "abigailrpass",
          "email": "abigail.rivera@x.dummyjson.com",
          "firstName": "Abigail",
          "lastName": "Rivera",
          "gender": "female",
          "image": "https://dummyjson.com/icon/abigailr/128"
        },
        {
          "id": 20,
          "username": "jacksone",
          "password": "jacksonepass",
          "email": "jackson.evans@x.dummyjson.com",
          "firstName": "Jackson",
          "lastName": "Evans",
          "gender": "male",
          "image": "https://dummyjson.com/icon/jacksone/128"
        },
        {
          "id": 21,
          "username": "madisonc",
          "password": "madisoncpass",
          "email": "madison.collins@x.dummyjson.com",
          "firstName": "Madison",
          "lastName": "Collins",
          "gender": "female",
          "image": "https://dummyjson.com/icon/madisonc/128"
        },
        {
          "id": 22,
          "username": "elijahs",
          "password": "elijahspass",
          "email": "elijah.stewart@x.dummyjson.com",
          "firstName": "Elijah",
          "lastName": "Stewart",
          "gender": "male",
          "image": "https://dummyjson.com/icon/elijahs/128"
        },
        {
          "id": 23,
          "username": "chloem",
          "password": "chloempass",
          "email": "chloe.morales@x.dummyjson.com",
          "firstName": "Chloe",
          "lastName": "Morales",
          "gender": "female",
          "image": "https://dummyjson.com/icon/chloem/128"
        },
        {
          "id": 24,
          "username": "mateon",
          "password": "mateonpass",
          "email": "mateo.nguyen@x.dummyjson.com",
          "firstName": "Mateo",
          "lastName": "Nguyen",
          "gender": "male",
          "image": "https://dummyjson.com/icon/mateon/128"
        },
        {
          "id": 25,
          "username": "harpere",
          "password": "harperepass",
          "email": "harper.kelly@x.dummyjson.com",
          "firstName": "Harper",
          "lastName": "Kelly",
          "gender": "female",
          "image": "https://dummyjson.com/icon/harpere/128"
        },
        {
          "id": 26,
          "username": "evelyng",
          "password": "evelyngpass",
          "email": "evelyn.gonzalez@x.dummyjson.com",
          "firstName": "Evelyn",
          "lastName": "Gonzalez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/evelyng/128"
        },
        {
          "id": 27,
          "username": "danielc",
          "password": "danielcpass",
          "email": "daniel.cook@x.dummyjson.com",
          "firstName": "Daniel",
          "lastName": "Cook",
          "gender": "male",
          "image": "https://dummyjson.com/icon/danielc/128"
        },
        {
          "id": 28,
          "username": "lilyb",
          "password": "lilybpass",
          "email": "lily.lee@x.dummyjson.com",
          "firstName": "Lily",
          "lastName": "Lee",
          "gender": "female",
          "image": "https://dummyjson.com/icon/lilyb/128"
        },
        {
          "id": 29,
          "username": "henryh",
          "password": "henryhpass",
          "email": "henry.hill@x.dummyjson.com",
          "firstName": "Henry",
          "lastName": "Hill",
          "gender": "male",
          "image": "https://dummyjson.com/icon/henryh/128"
        },
        {
          "id": 30,
          "username": "addisonw",
          "password": "addisonwpass",
          "email": "addison.wright@x.dummyjson.com",
          "firstName": "Addison",
          "lastName": "Wright",
          "gender": "female",
          "image": "https://dummyjson.com/icon/addisonw/128"
        },
        {
          "id": 31,
          "username": "gabriela",
          "password": "gabrielapass",
          "email": "gabriel.adams@x.dummyjson.com",
          "firstName": "Gabriel",
          "lastName": "Adams",
          "gender": "male",
          "image": "https://dummyjson.com/icon/gabriela/128"
        },
        {
          "id": 32,
          "username": "natalieh",
          "password": "nataliehpass",
          "email": "natalie.harris@x.dummyjson.com",
          "firstName": "Natalie",
          "lastName": "Harris",
          "gender": "female",
          "image": "https://dummyjson.com/icon/natalieh/128"
        },
        {
          "id": 33,
          "username": "carterb",
          "password": "carterbpass",
          "email": "carter.baker@x.dummyjson.com",
          "firstName": "Carter",
          "lastName": "Baker",
          "gender": "male",
          "image": "https://dummyjson.com/icon/carterb/128"
        },
        {
          "id": 34,
          "username": "sofiam",
          "password": "sofiampass",
          "email": "sofia.mitchell@x.dummyjson.com",
          "firstName": "Sofia",
          "lastName": "Mitchell",
          "gender": "female",
          "image": "https://dummyjson.com/icon/sofiam/128"
        },
        {
          "id": 35,
          "username": "jackw",
          "password": "jackwpass",
          "email": "jack.ward@x.dummyjson.com",
          "firstName": "Jack",
          "lastName": "Ward",
          "gender": "male",
          "image": "https://dummyjson.com/icon/jackw/128"
        },
        {
          "id": 36,
          "username": "harpert",
          "password": "harpertpass",
          "email": "harper.turner@x.dummyjson.com",
          "firstName": "Harper",
          "lastName": "Turner",
          "gender": "female",
          "image": "https://dummyjson.com/icon/harpert/128"
        },
        {
          "id": 37,
          "username": "masonp",
          "password": "masonppass",
          "email": "mason.parker@x.dummyjson.com",
          "firstName": "Mason",
          "lastName": "Parker",
          "gender": "male",
          "image": "https://dummyjson.com/icon/masonp/128"
        },
        {
          "id": 38,
          "username": "ariar",
          "password": "ariarpass",
          "email": "aria.roberts@x.dummyjson.com",
          "firstName": "Aria",
          "lastName": "Roberts",
          "gender": "female",
          "image": "https://dummyjson.com/icon/ariar/128"
        },
        {
          "id": 39,
          "username": "lucasg",
          "password": "lucasgpass",
          "email": "lucas.gray@x.dummyjson.com",
          "firstName": "Lucas",
          "lastName": "Gray",
          "gender": "male",
          "image": "https://dummyjson.com/icon/lucasg/128"
        },
        {
          "id": 40,
          "username": "ellaa",
          "password": "ellaapass",
          "email": "ella.adams@x.dummyjson.com",
          "firstName": "Ella",
          "lastName": "Adams",
          "gender": "female",
          "image": "https://dummyjson.com/icon/ellaa/128"
        },
        {
          "id": 41,
          "username": "evanr",
          "password": "evanrpass",
          "email": "evan.reed@x.dummyjson.com",
          "firstName": "Evan",
          "lastName": "Reed",
          "gender": "male",
          "image": "https://dummyjson.com/icon/evanr/128"
        },
        {
          "id": 42,
          "username": "averyc",
          "password": "averycpass",
          "email": "avery.carter@x.dummyjson.com",
          "firstName": "Avery",
          "lastName": "Carter",
          "gender": "female",
          "image": "https://dummyjson.com/icon/averyc/128"
        },
        {
          "id": 43,
          "username": "benjaminf",
          "password": "benjaminfpass",
          "email": "benjamin.foster@x.dummyjson.com",
          "firstName": "Benjamin",
          "lastName": "Foster",
          "gender": "male",
          "image": "https://dummyjson.com/icon/benjaminf/128"
        },
        {
          "id": 44,
          "username": "scarlettw",
          "password": "scarlettwpass",
          "email": "scarlett.wright@x.dummyjson.com",
          "firstName": "Scarlett",
          "lastName": "Wright",
          "gender": "female",
          "image": "https://dummyjson.com/icon/scarlettw/128"
        },
        {
          "id": 45,
          "username": "lincolnk",
          "password": "lincolnkpass",
          "email": "lincoln.kelly@x.dummyjson.com",
          "firstName": "Lincoln",
          "lastName": "Kelly",
          "gender": "male",
          "image": "https://dummyjson.com/icon/lincolnk/128"
        },
        {
          "id": 46,
          "username": "hannahr",
          "password": "hannahrpass",
          "email": "hannah.robinson@x.dummyjson.com",
          "firstName": "Hannah",
          "lastName": "Robinson",
          "gender": "female",
          "image": "https://dummyjson.com/icon/hannahr/128"
        },
        {
          "id": 47,
          "username": "nicholasb",
          "password": "nicholasbpass",
          "email": "nicholas.bailey@x.dummyjson.com",
          "firstName": "Nicholas",
          "lastName": "Bailey",
          "gender": "male",
          "image": "https://dummyjson.com/icon/nicholasb/128"
        },
        {
          "id": 48,
          "username": "lunar",
          "password": "lunarpass",
          "email": "luna.russell@x.dummyjson.com",
          "firstName": "Luna",
          "lastName": "Russell",
          "gender": "female",
          "image": "https://dummyjson.com/icon/lunar/128"
        },
        {
          "id": 49,
          "username": "jacobc",
          "password": "jacobcpass",
          "email": "jacob.cooper@x.dummyjson.com",
          "firstName": "Jacob",
          "lastName": "Cooper",
          "gender": "male",
          "image": "https://dummyjson.com/icon/jacobc/128"
        },
        {
          "id": 50,
          "username": "stellah",
          "password": "stellahpass",
          "email": "stella.hughes@x.dummyjson.com",
          "firstName": "Stella",
          "lastName": "Hughes",
          "gender": "female",
          "image": "https://dummyjson.com/icon/stellah/128"
        },
        {
          "id": 51,
          "username": "elib",
          "password": "elibpass",
          "email": "eli.bennett@x.dummyjson.com",
          "firstName": "Eli",
          "lastName": "Bennett",
          "gender": "male",
          "image": "https://dummyjson.com/icon/elib/128"
        },
        {
          "id": 52,
          "username": "gracep",
          "password": "graceppass",
          "email": "grace.perry@x.dummyjson.com",
          "firstName": "Grace",
          "lastName": "Perry",
          "gender": "female",
          "image": "https://dummyjson.com/icon/gracep/128"
        },
        {
          "id": 53,
          "username": "lucasgx",
          "password": "lucasgxpass",
          "email": "lucas.gordon@x.dummyjson.com",
          "firstName": "Lucas",
          "lastName": "Gordon",
          "gender": "male",
          "image": "https://dummyjson.com/icon/lucasgx/128"
        },
        {
          "id": 54,
          "username": "avah",
          "password": "avahpass",
          "email": "ava.harrison@x.dummyjson.com",
          "firstName": "Ava",
          "lastName": "Harrison",
          "gender": "female",
          "image": "https://dummyjson.com/icon/avah/128"
        },
        {
          "id": 55,
          "username": "owenf",
          "password": "owenfpass",
          "email": "owen.fisher@x.dummyjson.com",
          "firstName": "Owen",
          "lastName": "Fisher",
          "gender": "male",
          "image": "https://dummyjson.com/icon/owenf/128"
        },
        {
          "id": 56,
          "username": "samanthah",
          "password": "samanthahpass",
          "email": "samantha.howard@x.dummyjson.com",
          "firstName": "Samantha",
          "lastName": "Howard",
          "gender": "female",
          "image": "https://dummyjson.com/icon/samanthah/128"
        },
        {
          "id": 57,
          "username": "nathand",
          "password": "nathandpass",
          "email": "nathan.dixon@x.dummyjson.com",
          "firstName": "Nathan",
          "lastName": "Dixon",
          "gender": "male",
          "image": "https://dummyjson.com/icon/nathand/128"
        },
        {
          "id": 58,
          "username": "bellag",
          "password": "bellagpass",
          "email": "bella.grant@x.dummyjson.com",
          "firstName": "Bella",
          "lastName": "Grant",
          "gender": "female",
          "image": "https://dummyjson.com/icon/bellag/128"
        },
        {
          "id": 59,
          "username": "ethanf",
          "password": "ethanfpass",
          "email": "ethan.fletcher@x.dummyjson.com",
          "firstName": "Ethan",
          "lastName": "Fletcher",
          "gender": "male",
          "image": "https://dummyjson.com/icon/ethanf/128"
        },
        {
          "id": 60,
          "username": "lillians",
          "password": "lillianspass",
          "email": "lillian.simmons@x.dummyjson.com",
          "firstName": "Lillian",
          "lastName": "Simmons",
          "gender": "female",
          "image": "https://dummyjson.com/icon/lillians/128"
        },
        {
          "id": 61,
          "username": "masonpx",
          "password": "masonpxpass",
          "email": "mason.pearson@x.dummyjson.com",
          "firstName": "Mason",
          "lastName": "Pearson",
          "gender": "male",
          "image": "https://dummyjson.com/icon/masonpx/128"
        },
        {
          "id": 62,
          "username": "leahh",
          "password": "leahhpass",
          "email": "leah.henderson@x.dummyjson.com",
          "firstName": "Leah",
          "lastName": "Henderson",
          "gender": "female",
          "image": "https://dummyjson.com/icon/leahh/128"
        },
        {
          "id": 63,
          "username": "loganl",
          "password": "loganlpass",
          "email": "logan.lawson@x.dummyjson.com",
          "firstName": "Logan",
          "lastName": "Lawson",
          "gender": "male",
          "image": "https://dummyjson.com/icon/loganl/128"
        },
        {
          "id": 64,
          "username": "averyb",
          "password": "averybpass",
          "email": "avery.barnes@x.dummyjson.com",
          "firstName": "Avery",
          "lastName": "Barnes",
          "gender": "female",
          "image": "https://dummyjson.com/icon/averyb/128"
        },
        {
          "id": 65,
          "username": "calebp",
          "password": "calebppass",
          "email": "caleb.perkins@x.dummyjson.com",
          "firstName": "Caleb",
          "lastName": "Perkins",
          "gender": "male",
          "image": "https://dummyjson.com/icon/calebp/128"
        },
        {
          "id": 66,
          "username": "ariaf",
          "password": "ariafpass",
          "email": "aria.ferguson@x.dummyjson.com",
          "firstName": "Aria",
          "lastName": "Ferguson",
          "gender": "female",
          "image": "https://dummyjson.com/icon/ariaf/128"
        },
        {
          "id": 67,
          "username": "gabrielh",
          "password": "gabrielhpass",
          "email": "gabriel.hayes@x.dummyjson.com",
          "firstName": "Gabriel",
          "lastName": "Hayes",
          "gender": "male",
          "image": "https://dummyjson.com/icon/gabrielh/128"
        },
        {
          "id": 68,
          "username": "laylas",
          "password": "laylaspass",
          "email": "layla.sullivan@x.dummyjson.com",
          "firstName": "Layla",
          "lastName": "Sullivan",
          "gender": "female",
          "image": "https://dummyjson.com/icon/laylas/128"
        },
        {
          "id": 69,
          "username": "christopherw",
          "password": "christopherwpass",
          "email": "christopher.west@x.dummyjson.com",
          "firstName": "Christopher",
          "lastName": "West",
          "gender": "male",
          "image": "https://dummyjson.com/icon/christopherw/128"
        },
        {
          "id": 70,
          "username": "zoen",
          "password": "zoenpass",
          "email": "zoe.nicholson@x.dummyjson.com",
          "firstName": "Zoe",
          "lastName": "Nicholson",
          "gender": "female",
          "image": "https://dummyjson.com/icon/zoen/128"
        },
        {
          "id": 71,
          "username": "nolanb",
          "password": "nolanbpass",
          "email": "nolan.bryant@x.dummyjson.com",
          "firstName": "Nolan",
          "lastName": "Bryant",
          "gender": "male",
          "image": "https://dummyjson.com/icon/nolanb/128"
        },
        {
          "id": 72,
          "username": "victoriam",
          "password": "victoriampass",
          "email": "victoria.mcdonald@x.dummyjson.com",
          "firstName": "Victoria",
          "lastName": "McDonald",
          "gender": "female",
          "image": "https://dummyjson.com/icon/victoriam/128"
        },
        {
          "id": 73,
          "username": "maxr",
          "password": "maxrpass",
          "email": "max.russell@x.dummyjson.com",
          "firstName": "Max",
          "lastName": "Russell",
          "gender": "male",
          "image": "https://dummyjson.com/icon/maxr/128"
        },
        {
          "id": 74,
          "username": "penelopeh",
          "password": "penelopehpass",
          "email": "penelope.harper@x.dummyjson.com",
          "firstName": "Penelope",
          "lastName": "Harper",
          "gender": "female",
          "image": "https://dummyjson.com/icon/penelopeh/128"
        },
        {
          "id": 75,
          "username": "ryang",
          "password": "ryangpass",
          "email": "ryan.graham@x.dummyjson.com",
          "firstName": "Ryan",
          "lastName": "Graham",
          "gender": "male",
          "image": "https://dummyjson.com/icon/ryang/128"
        },
        {
          "id": 76,
          "username": "madelines",
          "password": "madelinespass",
          "email": "madeline.simpson@x.dummyjson.com",
          "firstName": "Madeline",
          "lastName": "Simpson",
          "gender": "female",
          "image": "https://dummyjson.com/icon/madelines/128"
        },
        {
          "id": 77,
          "username": "jonathanp",
          "password": "jonathanppass",
          "email": "jonathan.pierce@x.dummyjson.com",
          "firstName": "Jonathan",
          "lastName": "Pierce",
          "gender": "male",
          "image": "https://dummyjson.com/icon/jonathanp/128"
        },
        {
          "id": 78,
          "username": "eleanort",
          "password": "eleanortpass",
          "email": "eleanor.tyler@x.dummyjson.com",
          "firstName": "Eleanor",
          "lastName": "Tyler",
          "gender": "female",
          "image": "https://dummyjson.com/icon/eleanort/128"
        },
        {
          "id": 79,
          "username": "isaacl",
          "password": "isaaclpass",
          "email": "isaac.lawrence@x.dummyjson.com",
          "firstName": "Isaac",
          "lastName": "Lawrence",
          "gender": "male",
          "image": "https://dummyjson.com/icon/isaacl/128"
        },
        {
          "id": 80,
          "username": "hazelg",
          "password": "hazelgpass",
          "email": "hazel.gardner@x.dummyjson.com",
          "firstName": "Hazel",
          "lastName": "Gardner",
          "gender": "female",
          "image": "https://dummyjson.com/icon/hazelg/128"
        },
        {
          "id": 81,
          "username": "austinh",
          "password": "austinhpass",
          "email": "austin.hudson@x.dummyjson.com",
          "firstName": "Austin",
          "lastName": "Hudson",
          "gender": "male",
          "image": "https://dummyjson.com/icon/austinh/128"
        },
        {
          "id": 82,
          "username": "lillianb",
          "password": "lillianbpass",
          "email": "lillian.bishop@x.dummyjson.com",
          "firstName": "Lillian",
          "lastName": "Bishop",
          "gender": "female",
          "image": "https://dummyjson.com/icon/lillianb/128"
        },
        {
          "id": 83,
          "username": "dylanw",
          "password": "dylanwpass",
          "email": "dylan.wells@x.dummyjson.com",
          "firstName": "Dylan",
          "lastName": "Wells",
          "gender": "male",
          "image": "https://dummyjson.com/icon/dylanw/128"
        },
        {
          "id": 84,
          "username": "aaliyahh",
          "password": "aaliyahhpass",
          "email": "aaliyah.hanson@x.dummyjson.com",
          "firstName": "Aaliyah",
          "lastName": "Hanson",
          "gender": "female",
          "image": "https://dummyjson.com/icon/aaliyahh/128"
        },
        {
          "id": 85,
          "username": "cameronb",
          "password": "cameronbpass",
          "email": "cameron.burke@x.dummyjson.com",
          "firstName": "Cameron",
          "lastName": "Burke",
          "gender": "male",
          "image": "https://dummyjson.com/icon/cameronb/128"
        },
        {
          "id": 86,
          "username": "noram",
          "password": "norampass",
          "email": "nora.mills@x.dummyjson.com",
          "firstName": "Nora",
          "lastName": "Mills",
          "gender": "female",
          "image": "https://dummyjson.com/icon/noram/128"
        },
        {
          "id": 87,
          "username": "hunterg",
          "password": "huntergpass",
          "email": "hunter.gordon@x.dummyjson.com",
          "firstName": "Hunter",
          "lastName": "Gordon",
          "gender": "male",
          "image": "https://dummyjson.com/icon/hunterg/128"
        },
        {
          "id": 88,
          "username": "aubreyw",
          "password": "aubreywpass",
          "email": "aubrey.wagner@x.dummyjson.com",
          "firstName": "Aubrey",
          "lastName": "Wagner",
          "gender": "female",
          "image": "https://dummyjson.com/icon/aubreyw/128"
        },
        {
          "id": 89,
          "username": "braydenf",
          "password": "braydenfpass",
          "email": "brayden.fleming@x.dummyjson.com",
          "firstName": "Brayden",
          "lastName": "Fleming",
          "gender": "male",
          "image": "https://dummyjson.com/icon/braydenf/128"
        },
        {
          "id": 90,
          "username": "scarlettb",
          "password": "scarlettbpass",
          "email": "scarlett.bowman@x.dummyjson.com",
          "firstName": "Scarlett",
          "lastName": "Bowman",
          "gender": "female",
          "image": "https://dummyjson.com/icon/scarlettb/128"
        },
        {
          "id": 91,
          "username": "levih",
          "password": "levihpass",
          "email": "levi.hicks@x.dummyjson.com",
          "firstName": "Levi",
          "lastName": "Hicks",
          "gender": "male",
          "image": "https://dummyjson.com/icon/levih/128"
        },
        {
          "id": 92,
          "username": "autumng",
          "password": "autumngpass",
          "email": "autumn.gomez@x.dummyjson.com",
          "firstName": "Autumn",
          "lastName": "Gomez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/autumng/128"
        },
        {
          "id": 93,
          "username": "juliann",
          "password": "juliannpass",
          "email": "julian.newton@x.dummyjson.com",
          "firstName": "Julian",
          "lastName": "Newton",
          "gender": "male",
          "image": "https://dummyjson.com/icon/juliann/128"
        },
        {
          "id": 94,
          "username": "rubya",
          "password": "rubyapass",
          "email": "ruby.andrews@x.dummyjson.com",
          "firstName": "Ruby",
          "lastName": "Andrews",
          "gender": "female",
          "image": "https://dummyjson.com/icon/rubya/128"
        },
        {
          "id": 95,
          "username": "miless",
          "password": "milesspass",
          "email": "miles.stevenson@x.dummyjson.com",
          "firstName": "Miles",
          "lastName": "Stevenson",
          "gender": "male",
          "image": "https://dummyjson.com/icon/miless/128"
        },
        {
          "id": 96,
          "username": "auroral",
          "password": "auroralpass",
          "email": "aurora.lawson@x.dummyjson.com",
          "firstName": "Aurora",
          "lastName": "Lawson",
          "gender": "female",
          "image": "https://dummyjson.com/icon/auroral/128"
        },
        {
          "id": 97,
          "username": "oscarp",
          "password": "oscarppass",
          "email": "oscar.powers@x.dummyjson.com",
          "firstName": "Oscar",
          "lastName": "Powers",
          "gender": "male",
          "image": "https://dummyjson.com/icon/oscarp/128"
        },
        {
          "id": 98,
          "username": "clarab",
          "password": "clarabpass",
          "email": "clara.berry@x.dummyjson.com",
          "firstName": "Clara",
          "lastName": "Berry",
          "gender": "female",
          "image": "https://dummyjson.com/icon/clarab/128"
        },
        {
          "id": 99,
          "username": "gavins",
          "password": "gavinspass",
          "email": "gavin.stanley@x.dummyjson.com",
          "firstName": "Gavin",
          "lastName": "Stanley",
          "gender": "male",
          "image": "https://dummyjson.com/icon/gavins/128"
        },
        {
          "id": 100,
          "username": "lilah",
          "password": "lilahpass",
          "email": "lila.hudson@x.dummyjson.com",
          "firstName": "Lila",
          "lastName": "Hudson",
          "gender": "female",
          "image": "https://dummyjson.com/icon/lilah/128"
        },
        {
          "id": 101,
          "username": "alicej",
          "password": "alicejpass",
          "email": "alice.smith@x.dummyjson.com",
          "firstName": "Alice",
          "lastName": "Smith",
          "gender": "female",
          "image": "https://dummyjson.com/icon/alicej/128"
        },
        {
          "id": 102,
          "username": "johnd",
          "password": "johndpass",
          "email": "john.doe@x.dummyjson.com",
          "firstName": "John",
          "lastName": "Doe",
          "gender": "male",
          "image": "https://dummyjson.com/icon/johnd/128"
        },
        {
          "id": 103,
          "username": "emilyt",
          "password": "emilytpass",
          "email": "emily.brown@x.dummyjson.com",
          "firstName": "Emily",
          "lastName": "Brown",
          "gender": "female",
          "image": "https://dummyjson.com/icon/emilyt/128"
        },
        {
          "id": 104,
          "username": "michaelj",
          "password": "michaeljpass",
          "email": "michael.johnson@x.dummyjson.com",
          "firstName": "Michael",
          "lastName": "Johnson",
          "gender": "male",
          "image": "https://dummyjson.com/icon/michaelj/128"
        },
        {
          "id": 105,
          "username": "emmac",
          "password": "emmacpass",
          "email": "emma.wilson@x.dummyjson.com",
          "firstName": "Emma",
          "lastName": "Wilson",
          "gender": "female",
          "image": "https://dummyjson.com/icon/emmac/128"
        },
        {
          "id": 106,
          "username": "davidm",
          "password": "davidmpass",
          "email": "david.martinez@x.dummyjson.com",
          "firstName": "David",
          "lastName": "Martinez",
          "gender": "male",
          "image": "https://dummyjson.com/icon/davidm/128"
        },
        {
          "id": 107,
          "username": "oliviah",
          "password": "oliviahpass",
          "email": "olivia.anderson@x.dummyjson.com",
          "firstName": "Olivia",
          "lastName": "Anderson",
          "gender": "female",
          "image": "https://dummyjson.com/icon/oliviah/128"
        },
        {
          "id": 108,
          "username": "jamesg",
          "password": "jamesgpass",
          "email": "james.garcia@x.dummyjson.com",
          "firstName": "James",
          "lastName": "Garcia",
          "gender": "male",
          "image": "https://dummyjson.com/icon/jamesg/128"
        },
        {
          "id": 109,
          "username": "sophiam",
          "password": "sophiampass",
          "email": "sophia.jones@x.dummyjson.com",
          "firstName": "Sophia",
          "lastName": "Jones",
          "gender": "female",
          "image": "https://dummyjson.com/icon/sophiam/128"
        },
        {
          "id": 110,
          "username": "danielt",
          "password": "danieltpass",
          "email": "daniel.taylor@x.dummyjson.com",
          "firstName": "Daniel",
          "lastName": "Taylor",
          "gender": "male",
          "image": "https://dummyjson.com/icon/danielt/128"
        },
        {
          "id": 111,
          "username": "isabellaw",
          "password": "isabellawpass",
          "email": "isabella.jackson@x.dummyjson.com",
          "firstName": "Isabella",
          "lastName": "Jackson",
          "gender": "female",
          "image": "https://dummyjson.com/icon/isabellaw/128"
        },
        {
          "id": 112,
          "username": "alexanderh",
          "password": "alexanderhpass",
          "email": "alexander.hernandez@x.dummyjson.com",
          "firstName": "Alexander",
          "lastName": "Hernandez",
          "gender": "male",
          "image": "https://dummyjson.com/icon/alexanderh/128"
        },
        {
          "id": 113,
          "username": "miam",
          "password": "miampass",
          "email": "mia.miller@x.dummyjson.com",
          "firstName": "Mia",
          "lastName": "Miller",
          "gender": "female",
          "image": "https://dummyjson.com/icon/miam/128"
        },
        {
          "id": 114,
          "username": "ethant",
          "password": "ethantpass",
          "email": "ethan.thompson@x.dummyjson.com",
          "firstName": "Ethan",
          "lastName": "Thompson",
          "gender": "male",
          "image": "https://dummyjson.com/icon/ethant/128"
        },
        {
          "id": 115,
          "username": "charlotteb",
          "password": "charlottebpass",
          "email": "charlotte.davis@x.dummyjson.com",
          "firstName": "Charlotte",
          "lastName": "Davis",
          "gender": "female",
          "image": "https://dummyjson.com/icon/charlotteb/128"
        },
        {
          "id": 116,
          "username": "williaml",
          "password": "williamlpass",
          "email": "william.lopez@x.dummyjson.com",
          "firstName": "William",
          "lastName": "Lopez",
          "gender": "male",
          "image": "https://dummyjson.com/icon/williaml/128"
        },
        {
          "id": 117,
          "username": "ameliag",
          "password": "ameliagpass",
          "email": "amelia.perez@x.dummyjson.com",
          "firstName": "Amelia",
          "lastName": "Perez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/ameliag/128"
        },
        {
          "id": 118,
          "username": "benjaminw",
          "password": "benjaminwpass",
          "email": "benjamin.wilson@x.dummyjson.com",
          "firstName": "Benjamin",
          "lastName": "Wilson",
          "gender": "male",
          "image": "https://dummyjson.com/icon/benjaminw/128"
        },
        {
          "id": 119,
          "username": "liamr",
          "password": "liamrpass",
          "email": "liam.gonzalez@x.dummyjson.com",
          "firstName": "Liam",
          "lastName": "Gonzalez",
          "gender": "male",
          "image": "https://dummyjson.com/icon/liamr/128"
        },
        {
          "id": 120,
          "username": "evelynf",
          "password": "evelynfpass",
          "email": "evelyn.walker@x.dummyjson.com",
          "firstName": "Evelyn",
          "lastName": "Walker",
          "gender": "female",
          "image": "https://dummyjson.com/icon/evelynf/128"
        },
        {
          "id": 121,
          "username": "avahx",
          "password": "avahxpass",
          "email": "ava.harris@x.dummyjson.com",
          "firstName": "Ava",
          "lastName": "Harris",
          "gender": "female",
          "image": "https://dummyjson.com/icon/avahx/128"
        },
        {
          "id": 122,
          "username": "liamt",
          "password": "liamtpass",
          "email": "liam.smith@x.dummyjson.com",
          "firstName": "Liam",
          "lastName": "Smith",
          "gender": "male",
          "image": "https://dummyjson.com/icon/liamt/128"
        },
        {
          "id": 123,
          "username": "harperb",
          "password": "harperbpass",
          "email": "harper.king@x.dummyjson.com",
          "firstName": "Harper",
          "lastName": "King",
          "gender": "female",
          "image": "https://dummyjson.com/icon/harperb/128"
        },
        {
          "id": 124,
          "username": "noahl",
          "password": "noahlpass",
          "email": "noah.lewis@x.dummyjson.com",
          "firstName": "Noah",
          "lastName": "Lewis",
          "gender": "male",
          "image": "https://dummyjson.com/icon/noahl/128"
        },
        {
          "id": 125,
          "username": "loganlx",
          "password": "loganlxpass",
          "email": "logan.lee@x.dummyjson.com",
          "firstName": "Logan",
          "lastName": "Lee",
          "gender": "male",
          "image": "https://dummyjson.com/icon/loganlx/128"
        },
        {
          "id": 126,
          "username": "averya",
          "password": "averyapass",
          "email": "avery.scott@x.dummyjson.com",
          "firstName": "Avery",
          "lastName": "Scott",
          "gender": "female",
          "image": "https://dummyjson.com/icon/averya/128"
        },
        {
          "id": 127,
          "username": "masonw",
          "password": "masonwpass",
          "email": "mason.wright@x.dummyjson.com",
          "firstName": "Mason",
          "lastName": "Wright",
          "gender": "male",
          "image": "https://dummyjson.com/icon/masonw/128"
        },
        {
          "id": 128,
          "username": "gracee",
          "password": "graceepass",
          "email": "grace.green@x.dummyjson.com",
          "firstName": "Grace",
          "lastName": "Green",
          "gender": "female",
          "image": "https://dummyjson.com/icon/gracee/128"
        },
        {
          "id": 129,
          "username": "lucasa",
          "password": "lucasapass",
          "email": "lucas.allen@x.dummyjson.com",
          "firstName": "Lucas",
          "lastName": "Allen",
          "gender": "male",
          "image": "https://dummyjson.com/icon/lucasa/128"
        },
        {
          "id": 130,
          "username": "chloep",
          "password": "chloeppass",
          "email": "chloe.roberts@x.dummyjson.com",
          "firstName": "Chloe",
          "lastName": "Roberts",
          "gender": "female",
          "image": "https://dummyjson.com/icon/chloep/128"
        },
        {
          "id": 131,
          "username": "jacksonm",
          "password": "jacksonmpass",
          "email": "jackson.morales@x.dummyjson.com",
          "firstName": "Jackson",
          "lastName": "Morales",
          "gender": "male",
          "image": "https://dummyjson.com/icon/jacksonm/128"
        },
        {
          "id": 132,
          "username": "zoec",
          "password": "zoecpass",
          "email": "zoe.bennett@x.dummyjson.com",
          "firstName": "Zoe",
          "lastName": "Bennett",
          "gender": "female",
          "image": "https://dummyjson.com/icon/zoec/128"
        },
        {
          "id": 133,
          "username": "carterr",
          "password": "carterrpass",
          "email": "carter.rivera@x.dummyjson.com",
          "firstName": "Carter",
          "lastName": "Rivera",
          "gender": "male",
          "image": "https://dummyjson.com/icon/carterr/128"
        },
        {
          "id": 134,
          "username": "noramx",
          "password": "noramxpass",
          "email": "nora.russell@x.dummyjson.com",
          "firstName": "Nora",
          "lastName": "Russell",
          "gender": "female",
          "image": "https://dummyjson.com/icon/noramx/128"
        },
        {
          "id": 135,
          "username": "elijahc",
          "password": "elijahcpass",
          "email": "elijah.cruz@x.dummyjson.com",
          "firstName": "Elijah",
          "lastName": "Cruz",
          "gender": "male",
          "image": "https://dummyjson.com/icon/elijahc/128"
        },
        {
          "id": 136,
          "username": "madisonk",
          "password": "madisonkpass",
          "email": "madison.stewart@x.dummyjson.com",
          "firstName": "Madison",
          "lastName": "Stewart",
          "gender": "female",
          "image": "https://dummyjson.com/icon/madisonk/128"
        },
        {
          "id": 137,
          "username": "gabrielb",
          "password": "gabrielbpass",
          "email": "gabriel.bailey@x.dummyjson.com",
          "firstName": "Gabriel",
          "lastName": "Bailey",
          "gender": "male",
          "image": "https://dummyjson.com/icon/gabrielb/128"
        },
        {
          "id": 138,
          "username": "lilyl",
          "password": "lilylpass",
          "email": "lily.torres@x.dummyjson.com",
          "firstName": "Lily",
          "lastName": "Torres",
          "gender": "female",
          "image": "https://dummyjson.com/icon/lilyl/128"
        },
        {
          "id": 139,
          "username": "elijahh",
          "password": "elijahhpass",
          "email": "elijah.hill@x.dummyjson.com",
          "firstName": "Elijah",
          "lastName": "Hill",
          "gender": "male",
          "image": "https://dummyjson.com/icon/elijahh/128"
        },
        {
          "id": 140,
          "username": "hannahg",
          "password": "hannahgpass",
          "email": "hannah.howard@x.dummyjson.com",
          "firstName": "Hannah",
          "lastName": "Howard",
          "gender": "female",
          "image": "https://dummyjson.com/icon/hannahg/128"
        },
        {
          "id": 141,
          "username": "owens",
          "password": "owenspass",
          "email": "owen.sullivan@x.dummyjson.com",
          "firstName": "Owen",
          "lastName": "Sullivan",
          "gender": "male",
          "image": "https://dummyjson.com/icon/owens/128"
        },
        {
          "id": 142,
          "username": "ariam",
          "password": "ariampass",
          "email": "aria.parker@x.dummyjson.com",
          "firstName": "Aria",
          "lastName": "Parker",
          "gender": "female",
          "image": "https://dummyjson.com/icon/ariam/128"
        },
        {
          "id": 143,
          "username": "graysonc",
          "password": "graysoncpass",
          "email": "grayson.coleman@x.dummyjson.com",
          "firstName": "Grayson",
          "lastName": "Coleman",
          "gender": "male",
          "image": "https://dummyjson.com/icon/graysonc/128"
        },
        {
          "id": 144,
          "username": "ellar",
          "password": "ellarpass",
          "email": "ella.cook@x.dummyjson.com",
          "firstName": "Ella",
          "lastName": "Cook",
          "gender": "female",
          "image": "https://dummyjson.com/icon/ellar/128"
        },
        {
          "id": 145,
          "username": "lukec",
          "password": "lukecpass",
          "email": "luke.cooper@x.dummyjson.com",
          "firstName": "Luke",
          "lastName": "Cooper",
          "gender": "male",
          "image": "https://dummyjson.com/icon/lukec/128"
        },
        {
          "id": 146,
          "username": "leahp",
          "password": "leahppass",
          "email": "leah.hughes@x.dummyjson.com",
          "firstName": "Leah",
          "lastName": "Hughes",
          "gender": "female",
          "image": "https://dummyjson.com/icon/leahp/128"
        },
        {
          "id": 147,
          "username": "henryt",
          "password": "henrytpass",
          "email": "henry.turner@x.dummyjson.com",
          "firstName": "Henry",
          "lastName": "Turner",
          "gender": "male",
          "image": "https://dummyjson.com/icon/henryt/128"
        },
        {
          "id": 148,
          "username": "aurorag",
          "password": "auroragpass",
          "email": "aurora.barnes@x.dummyjson.com",
          "firstName": "Aurora",
          "lastName": "Barnes",
          "gender": "female",
          "image": "https://dummyjson.com/icon/aurorag/128"
        },
        {
          "id": 149,
          "username": "wyattp",
          "password": "wyattppass",
          "email": "wyatt.perry@x.dummyjson.com",
          "firstName": "Wyatt",
          "lastName": "Perry",
          "gender": "male",
          "image": "https://dummyjson.com/icon/wyattp/128"
        },
        {
          "id": 150,
          "username": "stellas",
          "password": "stellaspass",
          "email": "stella.morris@x.dummyjson.com",
          "firstName": "Stella",
          "lastName": "Morris",
          "gender": "female",
          "image": "https://dummyjson.com/icon/stellas/128"
        },
        {
          "id": 151,
          "username": "nathanr",
          "password": "nathanrpass",
          "email": "nathan.reed@x.dummyjson.com",
          "firstName": "Nathan",
          "lastName": "Reed",
          "gender": "male",
          "image": "https://dummyjson.com/icon/nathanr/128"
        },
        {
          "id": 152,
          "username": "paisleyf",
          "password": "paisleyfpass",
          "email": "paisley.bell@x.dummyjson.com",
          "firstName": "Paisley",
          "lastName": "Bell",
          "gender": "female",
          "image": "https://dummyjson.com/icon/paisleyf/128"
        },
        {
          "id": 153,
          "username": "christianp",
          "password": "christianppass",
          "email": "christian.perez@x.dummyjson.com",
          "firstName": "Christian",
          "lastName": "Perez",
          "gender": "male",
          "image": "https://dummyjson.com/icon/christianp/128"
        },
        {
          "id": 154,
          "username": "bellaa",
          "password": "bellaapass",
          "email": "bella.gonzalez@x.dummyjson.com",
          "firstName": "Bella",
          "lastName": "Gonzalez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/bellaa/128"
        },
        {
          "id": 155,
          "username": "nicholase",
          "password": "nicholasepass",
          "email": "nicholas.edwards@x.dummyjson.com",
          "firstName": "Nicholas",
          "lastName": "Edwards",
          "gender": "male",
          "image": "https://dummyjson.com/icon/nicholase/128"
        },
        {
          "id": 156,
          "username": "milam",
          "password": "milampass",
          "email": "mila.hernandez@x.dummyjson.com",
          "firstName": "Mila",
          "lastName": "Hernandez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/milam/128"
        },
        {
          "id": 157,
          "username": "aaronc",
          "password": "aaroncpass",
          "email": "aaron.cook@x.dummyjson.com",
          "firstName": "Aaron",
          "lastName": "Cook",
          "gender": "male",
          "image": "https://dummyjson.com/icon/aaronc/128"
        },
        {
          "id": 158,
          "username": "aubreyb",
          "password": "aubreybpass",
          "email": "aubrey.gutierrez@x.dummyjson.com",
          "firstName": "Aubrey",
          "lastName": "Gutierrez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/aubreyb/128"
        },
        {
          "id": 159,
          "username": "eliw",
          "password": "eliwpass",
          "email": "eli.ward@x.dummyjson.com",
          "firstName": "Eli",
          "lastName": "Ward",
          "gender": "male",
          "image": "https://dummyjson.com/icon/eliw/128"
        },
        {
          "id": 160,
          "username": "claires",
          "password": "clairespass",
          "email": "claire.foster@x.dummyjson.com",
          "firstName": "Claire",
          "lastName": "Foster",
          "gender": "female",
          "image": "https://dummyjson.com/icon/claires/128"
        },
        {
          "id": 161,
          "username": "jamesgx",
          "password": "jamesgxpass",
          "email": "james.gonzales@x.dummyjson.com",
          "firstName": "James",
          "lastName": "Gonzales",
          "gender": "male",
          "image": "https://dummyjson.com/icon/jamesgx/128"
        },
        {
          "id": 162,
          "username": "mateob",
          "password": "mateobpass",
          "email": "mateo.bennett@x.dummyjson.com",
          "firstName": "Mateo",
          "lastName": "Bennett",
          "gender": "male",
          "image": "https://dummyjson.com/icon/mateob/128"
        },
        {
          "id": 163,
          "username": "julianj",
          "password": "julianjpass",
          "email": "julian.james@x.dummyjson.com",
          "firstName": "Julian",
          "lastName": "James",
          "gender": "male",
          "image": "https://dummyjson.com/icon/julianj/128"
        },
        {
          "id": 164,
          "username": "addisonf",
          "password": "addisonfpass",
          "email": "addison.ward@x.dummyjson.com",
          "firstName": "Addison",
          "lastName": "Ward",
          "gender": "female",
          "image": "https://dummyjson.com/icon/addisonf/128"
        },
        {
          "id": 165,
          "username": "leor",
          "password": "leorpass",
          "email": "leo.rivera@x.dummyjson.com",
          "firstName": "Leo",
          "lastName": "Rivera",
          "gender": "male",
          "image": "https://dummyjson.com/icon/leor/128"
        },
        {
          "id": 166,
          "username": "elenam",
          "password": "elenampass",
          "email": "elena.long@x.dummyjson.com",
          "firstName": "Elena",
          "lastName": "Long",
          "gender": "female",
          "image": "https://dummyjson.com/icon/elenam/128"
        },
        {
          "id": 167,
          "username": "evanw",
          "password": "evanwpass",
          "email": "evan.wright@x.dummyjson.com",
          "firstName": "Evan",
          "lastName": "Wright",
          "gender": "male",
          "image": "https://dummyjson.com/icon/evanw/128"
        },
        {
          "id": 168,
          "username": "lunah",
          "password": "lunahpass",
          "email": "luna.perez@x.dummyjson.com",
          "firstName": "Luna",
          "lastName": "Perez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/lunah/128"
        },
        {
          "id": 169,
          "username": "jaxonb",
          "password": "jaxonbpass",
          "email": "jaxon.barnes@x.dummyjson.com",
          "firstName": "Jaxon",
          "lastName": "Barnes",
          "gender": "male",
          "image": "https://dummyjson.com/icon/jaxonb/128"
        },
        {
          "id": 170,
          "username": "penelopet",
          "password": "penelopetpass",
          "email": "penelope.king@x.dummyjson.com",
          "firstName": "Penelope",
          "lastName": "King",
          "gender": "female",
          "image": "https://dummyjson.com/icon/penelopet/128"
        },
        {
          "id": 171,
          "username": "connorb",
          "password": "connorbpass",
          "email": "connor.baker@x.dummyjson.com",
          "firstName": "Connor",
          "lastName": "Baker",
          "gender": "male",
          "image": "https://dummyjson.com/icon/connorb/128"
        },
        {
          "id": 172,
          "username": "arianaw",
          "password": "arianawpass",
          "email": "ariana.ross@x.dummyjson.com",
          "firstName": "Ariana",
          "lastName": "Ross",
          "gender": "female",
          "image": "https://dummyjson.com/icon/arianaw/128"
        },
        {
          "id": 173,
          "username": "ashers",
          "password": "asherspass",
          "email": "asher.scott@x.dummyjson.com",
          "firstName": "Asher",
          "lastName": "Scott",
          "gender": "male",
          "image": "https://dummyjson.com/icon/ashers/128"
        },
        {
          "id": 174,
          "username": "sadiep",
          "password": "sadieppass",
          "email": "sadie.morales@x.dummyjson.com",
          "firstName": "Sadie",
          "lastName": "Morales",
          "gender": "female",
          "image": "https://dummyjson.com/icon/sadiep/128"
        },
        {
          "id": 175,
          "username": "gabrielm",
          "password": "gabrielmpass",
          "email": "gabriel.mitchell@x.dummyjson.com",
          "firstName": "Gabriel",
          "lastName": "Mitchell",
          "gender": "male",
          "image": "https://dummyjson.com/icon/gabrielm/128"
        },
        {
          "id": 176,
          "username": "aaliyaha",
          "password": "aaliyahapass",
          "email": "aaliyah.martinez@x.dummyjson.com",
          "firstName": "Aaliyah",
          "lastName": "Martinez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/aaliyaha/128"
        },
        {
          "id": 177,
          "username": "xavierw",
          "password": "xavierwpass",
          "email": "xavier.wright@x.dummyjson.com",
          "firstName": "Xavier",
          "lastName": "Wright",
          "gender": "male",
          "image": "https://dummyjson.com/icon/xavierw/128"
        },
        {
          "id": 178,
          "username": "savannahe",
          "password": "savannahepass",
          "email": "savannah.gomez@x.dummyjson.com",
          "firstName": "Savannah",
          "lastName": "Gomez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/savannahe/128"
        },
        {
          "id": 179,
          "username": "tylerd",
          "password": "tylerdpass",
          "email": "tyler.davis@x.dummyjson.com",
          "firstName": "Tyler",
          "lastName": "Davis",
          "gender": "male",
          "image": "https://dummyjson.com/icon/tylerd/128"
        },
        {
          "id": 180,
          "username": "auroran",
          "password": "auroranpass",
          "email": "aurora.rodriguez@x.dummyjson.com",
          "firstName": "Aurora",
          "lastName": "Rodriguez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/auroran/128"
        },
        {
          "id": 181,
          "username": "brandonc",
          "password": "brandoncpass",
          "email": "brandon.collins@x.dummyjson.com",
          "firstName": "Brandon",
          "lastName": "Collins",
          "gender": "male",
          "image": "https://dummyjson.com/icon/brandonc/128"
        },
        {
          "id": 182,
          "username": "ellieh",
          "password": "elliehpass",
          "email": "ellie.stewart@x.dummyjson.com",
          "firstName": "Ellie",
          "lastName": "Stewart",
          "gender": "female",
          "image": "https://dummyjson.com/icon/ellieh/128"
        },
        {
          "id": 183,
          "username": "cameronp",
          "password": "cameronppass",
          "email": "cameron.perez@x.dummyjson.com",
          "firstName": "Cameron",
          "lastName": "Perez",
          "gender": "male",
          "image": "https://dummyjson.com/icon/cameronp/128"
        },
        {
          "id": 184,
          "username": "nataliehx",
          "password": "nataliehxpass",
          "email": "natalie.price@x.dummyjson.com",
          "firstName": "Natalie",
          "lastName": "Price",
          "gender": "female",
          "image": "https://dummyjson.com/icon/nataliehx/128"
        },
        {
          "id": 185,
          "username": "henrya",
          "password": "henryapass",
          "email": "henry.adams@x.dummyjson.com",
          "firstName": "Henry",
          "lastName": "Adams",
          "gender": "male",
          "image": "https://dummyjson.com/icon/henrya/128"
        },
        {
          "id": 186,
          "username": "harperbx",
          "password": "harperbxpass",
          "email": "harper.garcia@x.dummyjson.com",
          "firstName": "Harper",
          "lastName": "Garcia",
          "gender": "female",
          "image": "https://dummyjson.com/icon/harperbx/128"
        },
        {
          "id": 187,
          "username": "zacharyl",
          "password": "zacharylpass",
          "email": "zachary.lee@x.dummyjson.com",
          "firstName": "Zachary",
          "lastName": "Lee",
          "gender": "male",
          "image": "https://dummyjson.com/icon/zacharyl/128"
        },
        {
          "id": 188,
          "username": "ariamx",
          "password": "ariamxpass",
          "email": "aria.flores@x.dummyjson.com",
          "firstName": "Aria",
          "lastName": "Flores",
          "gender": "female",
          "image": "https://dummyjson.com/icon/ariamx/128"
        },
        {
          "id": 189,
          "username": "tristans",
          "password": "tristanspass",
          "email": "tristan.scott@x.dummyjson.com",
          "firstName": "Tristan",
          "lastName": "Scott",
          "gender": "male",
          "image": "https://dummyjson.com/icon/tristans/128"
        },
        {
          "id": 190,
          "username": "leahw",
          "password": "leahwpass",
          "email": "leah.gutierrez@x.dummyjson.com",
          "firstName": "Leah",
          "lastName": "Gutierrez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/leahw/128"
        },
        {
          "id": 191,
          "username": "laylab",
          "password": "laylabpass",
          "email": "layla.young@x.dummyjson.com",
          "firstName": "Layla",
          "lastName": "Young",
          "gender": "female",
          "image": "https://dummyjson.com/icon/laylab/128"
        },
        {
          "id": 192,
          "username": "nolang",
          "password": "nolangpass",
          "email": "nolan.gonzalez@x.dummyjson.com",
          "firstName": "Nolan",
          "lastName": "Gonzalez",
          "gender": "male",
          "image": "https://dummyjson.com/icon/nolang/128"
        },
        {
          "id": 193,
          "username": "hazelc",
          "password": "hazelcpass",
          "email": "hazel.evans@x.dummyjson.com",
          "firstName": "Hazel",
          "lastName": "Evans",
          "gender": "female",
          "image": "https://dummyjson.com/icon/hazelc/128"
        },
        {
          "id": 194,
          "username": "braydenh",
          "password": "braydenhpass",
          "email": "brayden.hill@x.dummyjson.com",
          "firstName": "Brayden",
          "lastName": "Hill",
          "gender": "male",
          "image": "https://dummyjson.com/icon/braydenh/128"
        },
        {
          "id": 195,
          "username": "violeta",
          "password": "violetapass",
          "email": "violet.roberts@x.dummyjson.com",
          "firstName": "Violet",
          "lastName": "Roberts",
          "gender": "female",
          "image": "https://dummyjson.com/icon/violeta/128"
        },
        {
          "id": 196,
          "username": "lucasr",
          "password": "lucasrpass",
          "email": "lucas.ramirez@x.dummyjson.com",
          "firstName": "Lucas",
          "lastName": "Ramirez",
          "gender": "male",
          "image": "https://dummyjson.com/icon/lucasr/128"
        },
        {
          "id": 197,
          "username": "eleanorw",
          "password": "eleanorwpass",
          "email": "eleanor.collins@x.dummyjson.com",
          "firstName": "Eleanor",
          "lastName": "Collins",
          "gender": "female",
          "image": "https://dummyjson.com/icon/eleanorw/128"
        },
        {
          "id": 198,
          "username": "maxp",
          "password": "maxppass",
          "email": "max.parker@x.dummyjson.com",
          "firstName": "Max",
          "lastName": "Parker",
          "gender": "male",
          "image": "https://dummyjson.com/icon/maxp/128"
        },
        {
          "id": 199,
          "username": "viviang",
          "password": "viviangpass",
          "email": "vivian.carter@x.dummyjson.com",
          "firstName": "Vivian",
          "lastName": "Carter",
          "gender": "female",
          "image": "https://dummyjson.com/icon/viviang/128"
        },
        {
          "id": 200,
          "username": "adrianf",
          "password": "adrianfpass",
          "email": "adrian.flores@x.dummyjson.com",
          "firstName": "Adrian",
          "lastName": "Flores",
          "gender": "male",
          "image": "https://dummyjson.com/icon/adrianf/128"
        },
        {
          "id": 201,
          "username": "mayah",
          "password": "mayahpass",
          "email": "maya.reed@x.dummyjson.com",
          "firstName": "Maya",
          "lastName": "Reed",
          "gender": "female",
          "image": "https://dummyjson.com/icon/mayah/128"
        },
        {
          "id": 202,
          "username": "calebn",
          "password": "calebnpass",
          "email": "caleb.nelson@x.dummyjson.com",
          "firstName": "Caleb",
          "lastName": "Nelson",
          "gender": "male",
          "image": "https://dummyjson.com/icon/calebn/128"
        },
        {
          "id": 203,
          "username": "novab",
          "password": "novabpass",
          "email": "nova.cooper@x.dummyjson.com",
          "firstName": "Nova",
          "lastName": "Cooper",
          "gender": "female",
          "image": "https://dummyjson.com/icon/novab/128"
        },
        {
          "id": 204,
          "username": "mateop",
          "password": "mateoppass",
          "email": "mateo.perez@x.dummyjson.com",
          "firstName": "Mateo",
          "lastName": "Perez",
          "gender": "male",
          "image": "https://dummyjson.com/icon/mateop/128"
        },
        {
          "id": 205,
          "username": "aubreyg",
          "password": "aubreygpass",
          "email": "aubrey.garcia@x.dummyjson.com",
          "firstName": "Aubrey",
          "lastName": "Garcia",
          "gender": "female",
          "image": "https://dummyjson.com/icon/aubreyg/128"
        },
        {
          "id": 206,
          "username": "elenab",
          "password": "elenabpass",
          "email": "elena.baker@x.dummyjson.com",
          "firstName": "Elena",
          "lastName": "Baker",
          "gender": "female",
          "image": "https://dummyjson.com/icon/elenab/128"
        },
        {
          "id": 207,
          "username": "jaces",
          "password": "jacespass",
          "email": "jace.smith@x.dummyjson.com",
          "firstName": "Jace",
          "lastName": "Smith",
          "gender": "male",
          "image": "https://dummyjson.com/icon/jaces/128"
        },
        {
          "id": 208,
          "username": "samanthal",
          "password": "samanthalpass",
          "email": "samantha.martinez@x.dummyjson.com",
          "firstName": "Samantha",
          "lastName": "Martinez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/samanthal/128"
        },
        {
          "id": 209,
          "username": "kminchelle",
          "password": "0lelplR",
          "email": "samantha.martinez@x.dummyjson.com",
          "firstName": "Samantha",
          "lastName": "Martinez",
          "gender": "female",
          "image": "https://dummyjson.com/icon/samanthal/128"
        }
      ],
      "total": 209,
      "skip": 0,
      "limit": 209
    };

    return (json['users'] as List).cast<_ResponseData>();
  }
}
