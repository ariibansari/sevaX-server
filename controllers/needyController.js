const db = require("../config/dbConnection")


exports.getAllItemsOnDonation = async (req, res) => {
    const { limit, user_id } = req.body

    let query = `select item.*, users.profilePictureSrc, users.name as donor_name from item
    left join users on users.user_id=item.user_id
    where item.item_id NOT IN (select item_id from item_requests where user_id='${user_id}')
    ${limit ? `limit ${limit}` : ''}`
    db.query(query, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({ error: 'Cannot not fetch items at the moment, please try again later' })
        }
        res.status(200).send(result)
    })

}

exports.getRequestStatusForItem = async (req, res) => {
    const { user_id, item_id } = req.body
    console.log(user_id, ' - ', item_id);

    if (user_id) {     //means all the value are present
        let query = `select * from item_requests where user_id=? and item_id=?`
        db.query(query, [user_id, item_id], (err, result) => {
            if (err) {
                console.log(err);
                res.status(500).json({ error: 'Cannot fetch item status at the moment, please try again later' })
            }
            console.log(result);
            res.status(200).send(result)
        })
    } else {
        res.status(500).json({ error: 'Cannot fetch item status at the moment, please try again later' })
    }
}

exports.requestForItem = async (req, res) => {
    const { user_id, item_id } = req.body

    console.log(user_id)

    if (user_id) {     //means all the value are present
        let query = `insert into item_requests (item_id, user_id) values (?, ?)`
        db.query(query, [item_id, user_id], (err, result) => {
            if (err) {
                console.log(err);
                res.status(500).json({ error: 'Cannot add item at the moment, please try again later' })
            }
            else {
                res.send(true)
            }
        })
    } else {
        res.status(500).json({ error: 'Insufficient data, cannot add item' })
    }

}

exports.getAllRequestedItems = async (req, res) => {
    const { limit, user_id } = req.body

    let query = `select item.*, users.profilePictureSrc, users.name as donor_name, item_requests.request_status, item_requests.request_timestamp from item
    left join users on users.user_id=item.user_id
    left join item_requests on item_requests.item_id=item.item_id
    where item.item_id IN (select item_id from item_requests where user_id='${user_id}') and item_requests.user_id='${user_id}'
    ${limit ? `limit ${limit}` : ''}`
    db.query(query, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({ error: 'Cannot not fetch items at the moment, please try again later' })
        }
        res.status(200).send(result)
    })

}