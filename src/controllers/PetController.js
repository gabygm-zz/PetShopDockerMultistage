const { pool } = require('../config/db.config')

const addPet = (request, response, next) => {
    const { name, gender } = request.body

    pool.query('INSERT INTO pet (name, gender) VALUES ($1, $2)', [name, gender], error => {
        if (error) {
            next(error);
        }
        response.status(201).json({ status: 'success', message: 'Pet added.' })
    })
}

module.exports = { addPet }