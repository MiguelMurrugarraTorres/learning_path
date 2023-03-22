
var numero = 1;

switch (numero){
    case 1:
        console.log("soy uno!");
        break;
    case 2:
        console.log("soy un 10");
        break;
    case 3:
        console.log("soy un 100");
        break;
        default:
        console.log("no soy nada");
}   


// ejercicio Tienda de Tecnologia


function solution(articule){
    switch (true){
        case (articule == "computadora"):
        return "Con mi computadora puedo programar usando JavaScript";
        break;    
        case (articule == "celular"):
        return "En mi celular puedo aprender usando la app de platzi";
        break;
        case (articule == "cable"):
        return "!Hay un cable en mi bota!";
        break;
        case (articule == "ornotorrinco"):
        return "Articulo no encontrado";
        break;

    }
};

solution('computadora');
solution('celular');
solution('cable');
solution('ornitorrino');