# restmvc
в xampp написать sql cod CREATE DATABASE books
импортировать в него файл books.sql
в терменале написать npm i
в терменале написать node index.js
перейти по ссылке http://localhost:3000/api-docs
создать нового пользователя
localhost:3000/api/auth/register
{
  "username": "us",
  "email": "us@example.com",
  "password": "123"
}
войти в аккаунт администратора 
localhost:3000/api/auth/signin
{
  "username": "admin",
  "email": "admin@example.com",
  "password": "123"
}
{
  "title": "any",
  "publishedDate": "any",
  "thumbnailUrl": "any",
  "shortDescription": "any",
  "products": [
    {"name": "product1", "quantity": 2},
    {"name": "product2"}
  ],
  "categories": ["category1", "category2"]
}
{
  "title": "Any Food",
  "publishedDate": "2024-01-15",
  "thumbnailUrl": "https://example.com/food.jpg",
  "shortDescription": "Description of the food",
  "products": [
    {"name": "Ingredient1", "quantity": 2, "unit": "grams"},
    {"name": "Ingredient2", "quantity": 3, "unit": "pieces"}
  ],
  "categories": ["Category1", "Category2"]
}

