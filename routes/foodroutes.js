module.exports = (app) => {
const express = require("express");
const food = require("../controllers/foodController");
const router = express.Router();
const checkRole = require('../middleware/checkRole');

router.post("/", checkRole.checkAdminRole, food.create);


router.get("/", food.findAll);

router.put('/:id', checkRole.checkAdminRole, food.update);

router.delete("/:id",checkRole.checkAdminRole, food.delete);

router.get("/search", food.searchByTitle);


router.get("/product/name/:name", food.findByProductName);

router.get("/category/name/:name", food.findByCategory);


  app.use("/api/food", router);
};
