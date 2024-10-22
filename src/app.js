import express from 'express'
import dotenv from 'dotenv'
import cors from 'cors'
import userRoute from './routes/user.route.js'


const app = express()
dotenv.config({})

app.use(cors({
    credentials: true,
    // origin: "https://social-media-bmt3.vercel.app",
    origin: "*",
    methods: 'GET,POST,PUT,DELETE,PATCH',  // Allow the methods you're using
    allowedHeaders: 'Content-Type,Authorization'  // Headers to allow
}))
app.use(express.json({limit:'100mb'}))
app.use(express.urlencoded({ extended:false}))



app.use('/api/v1/user',userRoute)



app.use((err, req, res, next) => {
    res.status(500).json({ msg: 'Internal server error' });
});
  
  

  
export default app