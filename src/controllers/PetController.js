const pet = require('../../models').Pet

module.exports = {
    async create(req, res) {
        try {
            const petCollection = await pet.create({
                name: req.body.name,
            })

            res.status(201).send(petCollection)
        } catch (e) {
            console.log(e)
            res.status(400).send(e)
        }
    }
}
