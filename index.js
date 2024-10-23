import app from "./src/app.js";



app.listen(process.env.PORT,()=>{
    console.log(`Server is listning on port ${process.env.PORT} `)
})