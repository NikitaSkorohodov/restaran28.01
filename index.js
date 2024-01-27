const express = require('express');
const app = express();
const cors = require('cors');
const swaggerUi = require('swagger-ui-express');
const swaggerAutogen = require('swagger-autogen')();

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.get('/', (req, res) => {
  res.json({ message: 'welcome' });
});

// Добавление маршрутов для комментариев
require('./routes/categoriesRoutes')(app);
require('./routes/foodroutes')(app);
require('./routes/productsroutes')(app);
require('./routes/usersroutes')(app);
require('./routes/auth')(app);
require('./routes/commentRoutes')(app); // Добавлено это

const swaggerOptions = {
  info: {
    version: '1.0.0',
    title: 'Library API',
    description: 'API documentation for the Library application',
  },
  host: 'localhost:3000',
  basePath: '/',
};

const outputFile = './swagger.json'; 
const endpointsFiles = ['./routes/*.js']; 
swaggerAutogen(outputFile, endpointsFiles, swaggerOptions).then(() => {
  const specs = require(outputFile);
  app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(specs));
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`SERVER IS RUNNING ${PORT}.`);
});
