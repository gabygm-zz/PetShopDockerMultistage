module.exports = {
    up: (queryInterface, Sequelize) =>
      queryInterface.addColumn("Pets", "gender", {
          type: Sequelize.DataTypes.STRING,
      })
}