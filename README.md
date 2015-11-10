# prueba tecnica

Proyecto en django para la prueba tecnica de bitgray.

Los requerimientos para correr de manera correcta este proyecto son

- django 1.8 o superior
- instalar el paquete xhtml2pdf y sus dependencias
- instalar el paquete djangorestframework y dependencias

- configurar en el settings.py los parametro de la base de datos para mysql
- se puede sicronizar la base de datos con los comando de django o instalando el archivo bitgray.sql que se encuentra en la carpeta sql que ya viene con información preconfigurada.
- una vez sincronizada la base de datos ejecutar el archivo triggres.sql
- configurar las opciones de correo electronico en el settings.py y url del mailer
- demonizar el archivo mailer.py con el intervalo de tiempo en el que se quiera enviar en dicho correo
