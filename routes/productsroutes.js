

module.exports = (app) => {
  const express = require("express");
    const products = require("../controllers/productsControllers");
    const router = express.Router();
    const checkRole = require('../middleware/checkRole');
  
   
    router.post("/", checkRole.checkAdminRole, products.create);
  
   
    router.get("/", products.findAll);
  
    router.put("/:id", checkRole.checkAdminRole, products.update);
  
    router.delete("/:id", checkRole.checkAdminRole, products.delete);
  
    app.use("/api/products", router);
  };
  