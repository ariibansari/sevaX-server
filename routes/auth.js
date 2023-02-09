const router = require("express").Router()
var db = require('../config/dbConnection')
const authController = require('../controllers/authController')
const multer = require('multer');
const uuid = require('uuid').v4;


const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'uploads/rationCards');
    },
    filename: function (req, file, cb) {
        const {originalname} = file
        const filename = `${uuid()}-${originalname}`
        req.customProperty = filename
        cb(null, filename);
    }
});

const upload = multer({ storage });

router.post('/login', authController.login)

router.post('/register/emailCheck', authController.emailCheck)

router.post('/register/donor', authController.donorRegistration)

router.post('/register/needy', upload.single('rationCardFile'), authController.needyRegistration)

router.post('/needy/verificationStatus', authController.getNeedyVerificationStatus)


module.exports = router