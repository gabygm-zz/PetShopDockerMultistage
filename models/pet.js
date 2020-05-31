module.exports = (sequelize, DataTypes) => {
    let Pet = sequelize.define("pet", {
      name: DataTypes.STRING,
      gender: DataTypes.STRING,
    })
    return Pet
  }