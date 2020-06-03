const pet = require('../models/pet').Pet

module.exports = {
    async create(req, res) {
        try {
            const petCollection = await pet.create({
                name: req.body.name,
                gender: req.body.gender,
            })

            res.status(201).send(petCollection)
        } catch (e) {
            console.log(e)
            res.status(400).send(e)
        }
    }
}
