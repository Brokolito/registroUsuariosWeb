function animatedButton(){
    var button= document.querySelector('.animated-button');
    button.classList.add('animate');
    setTimeout(()=>{
        button.classList.remove('animate')
    },1000)
}