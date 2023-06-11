const router = require("express").Router()
const db = require("../config/dbConnection");
const { getMyDetails, changeProfilePicture, updateProfile } = require("../controllers/usersController")
const multer = require('multer');
const uuid = require('uuid').v4;

//to fix wait_tieout issue (econn_reset error)
setInterval(() => {
    db.query('select 1', (err, result) => {
        if (err) {
            console.log(err);
        }
        else {
            console.log(result);
        }
    })
}, 15000)

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, 'uploads/profilePictures');
    },
    filename: function (req, file, cb) {
        const { originalname } = file
        const filename = `${uuid()}-${originalname}`
        req.customProperty = filename
        cb(null, filename);
    }
});
const upload = multer({ storage });


router.post('/myDetails', getMyDetails)

router.post('/changeProfilePicture', upload.single('newProfilePicture'), changeProfilePicture)

router.post('/updateProfile', updateProfile)


module.exports = router