function createHelloWorld(){
    function f(){
        return 'Hello World';
    }
    return f;
}
let f = createHelloWorld();
console.log(f())