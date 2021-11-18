# DOCUMENTACION
## TI City API Rest

Permite el registro de los usuarios de la aplicación Android TI City.

Esta API implementa el registro sobre el objeto users de mongoDB

El endpoint del servicio es:

http://host:port/api/v1/users

Los request son por método POST con los siguientes datos en formato JSON en el Body de la solicitud:

## request para insertar un usuario
{
    "body":{
        "type" : "insert",
        "data": {
            "email":"sucerquia@utp.edu.co",
            "nombre":"Andres Sucerquia",
            "departamento":"Risaralda",
            "municipio":"Pereira",
            "genero": "Masculino"
        }
    }
}

## request para listar usuarios
{
    "body":{
        "type" : "listar"
    }
}
## request para consultar un usuario por su correo
{
    "body":{
        "type" : "read",
        "keys": {
            "email": "sucerquia@utp.edu.co"
        }
    }
}
## request para actualizar un usuario llave correo
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
## request para eliminar un usuario por correo
{
    "body":{
        "type" : "delete",
        "keys": {
            "email": "sucerquia@utp.edu.co"
        }
    }
}

# Variables de entorno que utiliza la aplicación
Las variables de entorno van en el contenedor donde corre la app. 
Las siguientes son las variables de entorno de la aplicación

|     Variable         | Ejemplo                                         | Descripcion                                         |
|----------------------|-------------------------------------------------|-----------------------------------------------------|
| MONGODB_SERVICE_HOST | localhost                                       |Permite establecer el host de mongo                  |
| MONGODB_SERVICE_PORT | 27017                                           |Permite establecer el puerto                         |
| MONGODB_DATABASE     | ticity                                          |Permite establecer la base de datos                  |
| MONGODB_PASSWORD     | 12345                                           |Permite establecer la contraseña                     |
| MONGODB_USER         | admin                                           |Permite establecer el usuario                        || MONGODB_URI          | mongodb://root:toor@10.88.100.101/ticity ticity |Cadena de conexión completa                          |
| APP_PORT             | 8084                                            |Permite establecer el puerto                         |
| APP_IP               | 10.88.100.101                                   |Permite establecer la ip de la app                   |