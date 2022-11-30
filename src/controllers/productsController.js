
let db = require("../database/models");
const {Op} = require("sequelize");

module.exports = {

    list: (req, res) => {
        db.Products.findAll({
            include: [{ all: true }]
        })
        .then(products => {

            products = products.map(product => {
                products = {
                    id: product.id,
                    title: product.title,
                    description: product.description,
                    image: `/images/products/${product.image}`,
                    price_promo: product.price_promo,
                    price: product.price,
                    promo: product.promo,
                    category_id: product.category.category
            }
                return products
            })

            return res.json(products)
        })
        .catch(error =>console.error(error))
    }

}