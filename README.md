# DOCUMENTACION
los siguientes, son los formatos para cada acción de la API:
## request de listar
{
    "body":{
        "type" : "listar"
        
        
    }
}
## request de leer
{
    "body":{
        "type" : "read",
        "keys": {
            "email": "sucerquia@utp.edu.co"
        }
        
    }
}
## request de actualizar
{
    "body":{
        "type" : "update",
        "keys": {
            "email": "sucerquia@utp.edu.co"
        },
        "data": {
            "email":"sucerquia@utp.edu.co",
            "nombre":"andres orduz",
            "departamento":"risaralda",
            "municipio":"dosquebradas",
            "genero": "Masculino"

        }
        
    }
}
## request de eliminar
{
    "body":{
        "type" : "delete",
        "keys": {
            "email": "sucerquia@utp.edu.co"
        }
        
    }
}
## request de insertar
{
    "body":{
        "type" : "insert"
        "data": {
            "email":"sucerquia@utp.edu.co",
            "nombre":"Andres Sucerquia",
            "departamento":"Risaralda",
            "municipio":"Pereira",
            "genero": "Masculino"

        }
        
    }
}

## *NOTA*
Los correos electrónicos funcionan como llave primaria y como criterio de busquedas, por tanto no se repiten.