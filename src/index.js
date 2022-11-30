
const express = require('express');
const app = express();
const path = require('path');

const cors = require('cors');

require('dotenv').config();

/* if (process.env.NODE_ENV !== 'production'){
    require('dotenv').config();
} */

// App Server
app.set("port",process.env.PORT || 3001);
app.listen(app.get("port"),() => console.log("Server Start http://localhost:" + app.get("port")));

// App Access Public
app.use(express.static(path.resolve(__dirname, "../public")));

// App Middlewares
/* app.use(express.urlencoded({extended:false}));
app.use(express.json()); */


app.options('*', cors())
app.use(cors());

// App Routes
const products = require("./routes/productsApi");
app.use(products);