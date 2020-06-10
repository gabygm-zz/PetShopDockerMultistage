module.exports = (sequelize, DataTypes) => {
    let Pet = sequelize.define("Pet", {
      name: DataTypes.STRING,
      gender: DataTypes.STRING,
    })
    return Pet
  }