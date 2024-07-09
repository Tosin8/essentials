const mongoose = require('mongoose'); 

mongoose.connect("mongodb://localhost:27017", {}); 

const db = mongoose.connection.db;
db.on('error', (error) => console.error(error));
db.once('open', () => console.log('Connected to MongoDB'));
