const express = require('express');



const mongoose = require('mongoose'); 

const app = express();
 const port = 3000;
 app.use(bodyParser.json());

mongoose.connect('mongodb+srv://tosinezekiel8:zRd4MNhvkOwXkphs@essential.a6vjkc5.mongodb.net/?retryWrites=true&w=majority&appName=essential'); 

const db = mongoose.connection.db;
db.on('error', (error) => console.error(error));
db.once('open', () => console.log('Connected to MongoDB Database'));

app.delete('/:id', async (req, res) => {
  const  id  = req.params.id;
  await UserActivation.findByIdAndDelete(id);
  res.json('Deleted Sucessfully'); 

});  

app.listen(port,  () => {
  console.log(`Server is unning on:${port}`);
});

const {Schema, model} = mongoose; 
const userSchema = new Schema({
  name: String,
  email: String,
  password: String
});
const User = model('User', userSchema);














/// Sample from official MongoDB documentation
// const { MongoClient } = require("mongodb");

// // Replace the uri string with your connection string.
// const uri = "mongodb+srv://tosinezekiel8:zRd4MNhvkOwXkphs@essential.a6vjkc5.mongodb.net/?retryWrites=true&w=majority&appName=essential";

// const client = new MongoClient(uri);

// async function run() {
//   try {
//     const database = client.db('sample_mflix');
//     const movies = database.collection('movies');

//     // Query for a movie that has the title 'Back to the Future'
//     const query = { title: 'Back to the Future' };
//     const movie = await movies.findOne(query);

//     console.log(movie);
//   } finally {
//     // Ensures that the client will close when you finish/error
//     await client.close();
//   }
// }
// run().catch(console.dir);

