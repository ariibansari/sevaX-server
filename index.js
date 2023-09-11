const express = require('express')
const cors = require("cors")
const path = require('path');
require('dotenv').config()

const app = express()

app.use(express.json())
app.use(cors())
app.use("/uploads", express.static(path.join(__dirname, "uploads")));

//routes
app.use("/auth", require("./routes/auth"));
app.use("/admin", require("./routes/admin"));
app.use("/users", require("./routes/users"));
app.use("/donor", require("./routes/donor"));
app.use("/needy", require("./routes/needy"));

app.get('/', (req, res) => {
    let html =
        `
        <html>
            <head>
                <title>SevaX Server</title>
                <style>
                    :root {
                        --bg-body: rgba(255, 255, 255);
                        --bg-nav: rgba(243, 243, 243, 0.336);
                    
                        --clr-main: #ffd301;
                        --clr-main-hover: #ffdc2d;
                        --clr-sec: #252525;
                        --clr-sec-hover: #3d3d3d;
                        --clr-tert: rgb(0, 225, 255);
                    
                        --text-main: #222;
                        --text-main-hover: rgb(94, 94, 94);
                    
                        --text-sec: gray;
                    
                        --navbar-ht: 6rem;
                    
                        --clr-status-accepted: #00e065;
                        --clr-status-accepted-light: #00e065c2;
                        --clr-status-pending: #ffd000;
                        --clr-status-pending-light: #ffd000;
                        --clr-status-rejected: #ff3c00;
                        --clr-status-rejected-light: #ff3c00ce;
                    }
                    main{
                        height: 100dvh;
                        width: 100vw;
                        display: flex;
                        flex-direction: column;
                        justify-content: center;
                        align-items: center;
                        font-family: 'poppins';
                        gap:0;
                    }
                    .flexed-container{
                        display: flex;
                        justify-content: center;
                        align-items: center;
                        gap: 1rem;
                    }
                    .logo {
                        text-decoration: none;
                        font-size: 1.5rem;
                        font-family: 'Raleway', sans-serif;
                        font-weight: 800;
                        color: var(--clr-sec);
                        margin-bottom: 0;
                      }
                      
                      .logo:hover {
                        color: var(--clr-sec);
                      }
                      
                      .logo span {
                        font-style: italic;
                        color: var(--clr-main-hover);
                      }
                      h2{
                        font-size: 1.3rem;
                        font-family: 'Raleway', sans-serif;
                        font-weight: 600;
                        color: var(--clr-sec);
                        margin-bottom: 0;
                      }
                      p{
                        font-family: 'Raleway', sans-serif;
                        font-size: 0.9rem;
                      }
                </style>
            </head>
            <body>
                <main>
                    <div class="flexed-container">
                        <h1 class="logo">Seva<span>X</span>.</h1>
                        <h2>Server</h2>
                        </div>
                        <p>version 1.20</p>
                </main>
            </body>
        </html>
    `
    return res.status(200).send(html)
})

app.get('/test', (req, res) => {
    return res.status(200).json({ text: 'success' })
})
const port = process.env.PORT || 5000
app.listen(port, () => {
    console.log(`Server started at port ${port}`)
})