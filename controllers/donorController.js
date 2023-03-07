const db = require("../config/dbConnection")

exports.addItem = async (req, res) => {
    const { name, description, user_id } = req.body
    const fileSrc = `${req.file.destination}/${req.file.filename}`

    console.log(name, ' - ', description, ' - ', fileSrc);
    if (name !== '' || description !== '' || fileSrc !== '' || user_id !== '') {     //means all the value are present
        let insertItemQuery = `insert into item (name, description, pictureSrc, isActive, user_id) values ('${name}', '${description}', '${fileSrc}', '1', '${user_id}' )`
        db.query(insertItemQuery, (err, result) => {
            if (err) {
                console.log(err);
                res.status(500).json({ error: 'Cannot add item at the moment, please try again later' })
            }

            res.status(200).send(true)
        })
    } else {
        res.status(500).json({ error: 'Insufficient data, cannot add item' })
    }

}

exports.allItemsOfDonor = async (req, res) => {
    const { user_id } = req.body

    console.log(user_id)

    if (user_id) {     //means all the value are present
        let query = `select (select count(item_requests.id) from item_requests where item_requests.item_id=item.item_id) as request_count, item.* from item
        where item.user_id=? order by item.item_id desc`
        db.query(query, user_id, (err, result) => {
            if (err) {
                console.log(err);
                res.status(500).json({ error: 'Cannot add item at the moment, please try again later' })
            }

            res.status(200).send(result)
        })
    } else {
        res.status(500).json({ error: 'Insufficient data, cannot add item' })
    }

}

exports.getItemDetails = async (req, res) => {
    const { item_id } = req.params

    console.log(item_id)

    if (item_id) {     //means all the value are present
        let query = `select * from item 
        where item_id=? order by item_id desc`
        db.query(query, item_id, (err, result) => {
            if (err) {
                console.log(err);
                res.status(500).json({ error: 'Cannot get item at the moment, please try again later' })
            }

            res.status(200).send(result)
        })
    } else {
        res.status(500).json({ error: 'Cannot get item at the moment, please try again later' })
    }

}

exports.getItemRequestList = async (req, res) => {
    const { item_id } = req.body

    console.log(item_id)

    if (item_id) {     //means all the value are present
        let query = `select item_requests.*, users.name, users.profilePictureSrc, needy.sourceOfIncome, needy.noOfFamilyMembers, needy.yearlyIncome, needy.rationCardSrc from item_requests 
        left join users on users.user_id=item_requests.user_id
        left join needy on needy.user_id=item_requests.user_id
        where item_requests.item_id=?`
        db.query(query, item_id, (err, result) => {
            if (err) {
                console.log(err);
                res.status(500).json({ error: 'Cannot get item request list at the moment, please try again later' })
            }

            res.status(200).send(result)
        })
    } else {
        res.status(500).json({ error: 'Cannot get item request list at the moment, please try again later' })
    }

}

