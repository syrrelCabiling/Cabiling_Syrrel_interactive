const express = require('express');
const router = express.Router();

const sql = require('../utils/sql');


router.get('/', (req, res) => {
    // should really get the user data here and then fetch it thru, but let's try this asynchronously
    console.log('at the main route');

    let query = "SELECT ID, Image, Classification, Volcano, Tephra, HowOften, DeathToll, OtherDamages FROM tbl_veiData"; // columns from the db

    sql.query(query, (err, result) => {
        if (err) { throw err; console.log(err); }

        console.log(result); // should see objects wrapped in an array

        // render the home view with dynamic data
        res.render('home', { vIndex: result }); //data is a generic key
    
    })
})


//secondary route
router.get('/:id', (req,res) => {
    console.log('hit a dynamic route!');
    console.log(req.params.id);

        let query = `SELECT * FROM tbl_veiData WHERE ID="${req.params.id}"`; // params will give you either 1, 2, or 3
    
       sql.query(query, (err, result) => {
          if (err) { throw err; console.log(err); }
    
          console.log(result); // should see objects wrapped in an array

            // render the home view with dynamic data
        res.json(result); //data is a generic key; send the db query back to the browser
        
    })
}) // name id anything you want

module.exports = router;