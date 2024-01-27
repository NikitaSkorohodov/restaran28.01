const express = require('express');
const commentController = require('../controllers/commentController');
const router = express.Router();
const authMiddleware = require('../middleware/checkRole');

// Создание нового комментария
router.post('/', authMiddleware.checkAuthentication, commentController.create);

// Получение всех комментариев для конкретного блюда
router.get('/food/:productName/comments', commentController.getCommentsForFood);


module.exports = (app) => {
  app.use('/api/comments', router);
};
