const Comment = require('../models/comments');
const jwt = require('jsonwebtoken');
const User = require('../models/user'); 
const bcrypt = require('bcrypt');
const secretKey = 'SECRET_KEY_RANDOM'; 
const UserRole = require('../models/userRoles');
const Food = require('../models/Food'); 


const getCommentsForFood = async (req, res) => {
  try {
    const productName = req.params.productName; // Изменение наименования параметра
    const food = await Food.findOne({ where: { title: productName } });

    if (!food) {
      return res.status(404).json({ error: 'Food not found' });
    }

    const foodId = food.id;

    const comments = await Comment.findAll({
      where: { foodId },
      include: [
        {
          model: User,
          attributes: ['UserName'],
        },
      ],
    });

    res.json(comments);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
};

exports.getAllUsers = async (req, res) => {
  try {
    const users = await User.findAll({
      attributes: ['UserName', 'Email'],
    });

    res.status(200).json(users);
  } catch (error) {
    console.error(error);
    res.status(500).json({ message: 'Error while fetching users' });
  }
};


// Создание нового комментария
const create = async (req, res) => {
    try {
      // Извлеките идентификатор пользователя из раскодированного токена
      const userId = req.user.userId; // Предполагается, что ваш раскодированный токен содержит свойство userId
  
      const { foodId, commentText } = req.body;
      const newComment = await Comment.create({ userId, foodId, commentText });
      res.json(newComment);
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: 'Внутренняя ошибка сервера' });
    }
  };

module.exports = {
  getCommentsForFood,
  create,
};
