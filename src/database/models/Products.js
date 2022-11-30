module.exports = (sequelize, dataTypes) => {
	let alias = "Products";
	let columns = {
		id: {
			type: dataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true
		},
		title: {
			type: dataTypes.STRING
		},
		description: {
			type: dataTypes.STRING
		},
        image: {
			type: dataTypes.STRING
		},
		price_promo: {
			type: dataTypes.INTEGER
		},
		price: {
			type: dataTypes.INTEGER
		},
		promo: {
			type: dataTypes.INTEGER
		},
        category_id: {
			type: dataTypes.INTEGER
		}
		

	};

	let config = {
		tableName: "products",
		timestamps: false
		};

	const Product = sequelize.define(alias, columns, config);
	    
    Product.associate = function(models) {
        Product.belongsTo(models.Categories , {
            as: "category",
            foreignKey: "category_id"
        })
	}
		

	return Product; 

}