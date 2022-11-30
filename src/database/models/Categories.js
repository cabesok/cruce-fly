module.exports = (sequelize, dataTypes) => {
	let alias = "Categories";
	let columns = {
		id: {
			type: dataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true
		},
		category: {
			type: dataTypes.STRING
		}


	};

	let config = {
		tableName: "categories",
		timestamps: false
		};

	const Category = sequelize.define(alias, columns, config);

    Category.associate = function(models) {
        Category.hasMany(models.Products , {
            as: "products",
            foreignKey: "category_id"
        })
}

	return Category;

}