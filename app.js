const express = require('express');
const bodyParser = require('body-parser')
const cors = require('cors');
const PetController = require('./src/controllers/PetController')

const app = express();

app.use(bodyParser.json())
app.use(bodyParser.urlencoded({ extended: true }))
app.use(cors())

app.get('/', function (req, res) {
    res.json({ info: 'Get pets' })
});

app.route('/pets')
    .post(PetController.create)

app.listen(process.env.PORT||3000, function () {
    console.log('Example pet shop');
})