const mysql = require('mysql2/promise');

class MySQLDBConnector {
    static instance;
    pool;

    constructor() {
        this.pool = mysql.createPool({
            host: process.env.DB_HOST,
            user: process.env.DB_USER,
            password: process.env.DB_PASSWORD,
            database: process.env.DB_NAME,
            port: parseInt(process.env.DB_PORT),
            waitForConnections: true,
            connectionLimit: 10,
            queueLimit: 0,
            ssl: {
                rejectUnauthorized: false
            },
            multipleStatements: true
        });
    }

    static getInstance() {
        if (!MySQLDBConnector.instance) {
            MySQLDBConnector.instance = new MySQLDBConnector();
        }
        return MySQLDBConnector.instance;
    }

    // Same query wrapper
    async query(sql, params = [], callback) {
        try {
            const [results] = await this.pool.query(sql, params);
            return callback(null, results);
        } catch (error) {
            return callback(error, null);
        }
    }
}

module.exports = MySQLDBConnector.getInstance();
