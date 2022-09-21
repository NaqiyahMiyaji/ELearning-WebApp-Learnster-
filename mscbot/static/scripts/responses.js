function getBotResponse(input) {
    //rock paper scissors
    if (input == "rock") {
        return "paper";
    } else if (input == "paper") {
        return "scissors";
    } else if (input == "scissors") {
        return "rock";
    }
    

    // Simple responses
    if (input == "hello") {
        return "Hello there!";
    } else if (input == "goodbye") {
        return "Talk to you later!";

    } else if(input == "How are you"){
        return "I am Fine!";
    } else if(input == "tell me about yourself"){
        return "I am a Learnster Chatbot!! My creators created me for solving your queries :-)";
    } else if(input == "tell me about this organisation"){
        return "This Organisation Is created for Spreading Knowledge about the different courses Including different Programming knowledge in a very reasonable price and with Authentic Information!!"
    } else if (input == "mention all the courses"){
        return "Courses Offered-i)Complete PHP Bootcamp , ii)Learn Python A-Z , iii)Hands-on Artificial Intelligence , iv)Learn Vue JS , v)Angular JS , vi)Python Complete , vii)Learn React Native , viii)Internet Of Things , ix)C Programming , x)Web development , xi)Java (Advanced) , xii)Cyber Secuurity and Many More!!"
    } else if (input == "prices for all course"){
        return "i)Complete PHP Bootcamp: 700 rs , ii)Learn Python A-Z : 800 rs , iii)Hands-on Artificial Intelligence: 900 rs , iv)Learn Vue JS: 100 rs , v)Angular JS: 800 rs , vi)Python Complete: 500 rs , vii)Learn React Native: 200 rs , viii)Internet Of Things: 5600 rs , ix)C Programming: 3550 rs , x)Web development: 4400 rs , xi)Java (Advanced): 6500 rs , xii)Cyber Secuurity: 5000 rs , Android Development : 3550 rs"
    } else if(input == "can we terminate the course in between"){
        return "If you terminate the course in between, You will not get the refund."
    } else if(input == "can you tell about the qualifications of tutors"){
        return "All our tutors are B Tech Graduated from known and Accreditted Universities."
    } else if(input == "do you have courses regarding Architectural Field"){
        return "Sorry! We provide courses related to All Computer Group Branches of Engineering."
    } else if(input == "do you provide courses related to other engineering branches"){
        return "Sorry! We provide courses related to All Computer Group Branches of Engineering."
    } else if(input == "do you guarantee placements"){
        return "We guarantee Internships In Renowned Organisations!!"
    } else if (input == "price for python?"){
        return "Price for Python: 800 Rs."
    } else if (input == "price for java?"){
        return "Price for Java (Advance): 6500 Rs."
    } else if (input == "price for c programming?"){
        return "Price for C Programming Course: 3550 Rs."
    } else if (input=="price for web dev?"){
        return "Price for Web Development: 4400 Rs."
    }
}