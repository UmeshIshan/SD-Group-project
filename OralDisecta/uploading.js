const form = document.querySelector("form"),
fileInput = form.querySelector(".file-input"),
progressArea = document.querySelector(".progess-area"),
uploadedsArea = document.querySelector(".uploaded-area");

form.addEventListener("click", ()=>{
    fileInput.click();


});

fileInput.onchange = ({target})  =>{
    let file = target.files[0]; // [0] user select multiple images
    if(file){ // if file is selected
        let fileName = file.name; // getting selected file name 
        console.log(fileName);
        uploadFile(fileName); // calling upload file with  passing  file name as an  argument 

    }
}