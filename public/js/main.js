const myVEI = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let indexButtons = document.querySelectorAll('.u-link'), //to trigger each index and reveal data on lightbox
        lightbox = document.querySelector('.lightbox'); //this is the scale

     function veiIndex(vIndex) { // vIndex is the database result
        let targetDiv = document.querySelector('.lb-content'),
            targetImg = lightbox.querySelector('img');

        let veiContainer = `
            <h2>${vIndex.Title}</h2>
           <h5>Synopsis</h5> <p>${vIndex.Synopsis}</p>
           <p>${vIndex.Specs}</p>
           <h5>Casts</h5> <p>${vIndex.Casts}</p>
           <h5>Rotten Tomato Rating</h5> <p>${vIndex.Rating}</p>
            <p>${vIndex.Trailer}</p>
        `;

        console.log(veiContainer);

        targetDiv.innerHTML = veiContainer;
        targetImg.src = vIndex.imgsrc;

        lightbox.classList.add('show-lb'); // fetches the info?
     }

     function getVEIData(event) {
        event.preventDefault(); //kill default tag in behaviour (dont navigate anywhere)

        let imgSrc = this.previousElementSibling.getAttribute('src');
            let url = `/${this.getAttribute('href')}`; // /1

            fetch(url) // go get data
                .then(res => res.json()) // parse the json into a plain object
                .then(data => {
                    console.log("my database result is:", data)

                    data[0].imgsrc = imgSrc;

                    veiInfo(data[0]);
                })
                .catch((err) => {
                    console.log(err)
    })}

    for (let numIndex in getVEIData) {
        console.log(numIndex);

        // create a button for every prof (every entry) in our object
        let indexButton = document.createElement('button');

        // set the button's label (text) in the prof name (current entry in the object)
        indexButton.textContent = numIndex;

        //add some some event in the handling so that when we click one of our new buttons, we can show the right data
        indexButton.addEventListener('click', veiContainer);
        
        //add the button to the top of the section on our web page
        
        document.querySelector("#section1").appendChild(indexButton);
        
    }



    movieButtons.forEach(button => button.addEventListener('click', getVEIData));

    lightbox.querySelector('.close').addEventListener('click', 
    
    function() {
        lightbox.classList.remove('show-lb');
    });
})();