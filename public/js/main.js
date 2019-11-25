const myVEI = (() => {
    // get the user buttons and fire off an async DB query with Fetch
    let indexButtons = document.querySelectorAll('.index-link'), //to trigger each index and reveal data on lightbox
    lightbox = document.querySelector('.lightbox'); //this is the scale

     function veiIndex(vIndex) { // vIndex is the database result
        let targetDiv = document.querySelector('.lightbox'),
        targetImg = lightbox.querySelector('img');

        let veiContainer = `
            <img src="${vIndex.Image}">
            <h5>Classification:</h5><p>${vIndex.Classification}</p>
           <h5>Volcano:</h5><p>${vIndex.Volcano}</p>
           <h5>Tephra:</h5><p>${vIndex.Tephra}</p>
           <h5>How Often:</h5><p>${vIndex.HowOften}</p>
           <h5>Death Toll:</h5><p>${vIndex.OtherDamages}</p>
        `;
        
        console.log(veiContainer);

        targetDiv.innerHTML = veiContainer;
        targetImg.src = vIndex.imgsrc;
   
        
    }
    function volcanoData(event) {
        event.preventDefault(); //kill default tag in behaviour (dont navigate anywhere)
       // debugger;
       let imgSrc = this.getAttribute('src');
       let url = `/${this.getAttribute('href')}`; // /1


       fetch(url) // go get data
       .then(res => res.json()) // parse the json into a plain object
       .then(data => {
           console.log("my database result is:", data)

           data[0].imgsrc = imgSrc;

           veiIndex(data[0]);
       })
       .catch((err) => {
           console.log(err)
       })

       
    }

    indexButtons.forEach(button => button.addEventListener('click', volcanoData));

})();