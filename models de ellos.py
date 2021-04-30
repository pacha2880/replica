from django.db import models
from django.contrib.auth.models import AbstractUser

class User(AbstractUser):
    pass

    def __str__(self):
        return self.username

# Create your models here.

class Grupo(models.Model):
    nombre = models.CharField(max_length=50)
    descripcion = models.TextField()
    #integrantes = models.ManyToManyField(User, related_name='grupos')
    def __str__(self):
        return self.nombre



class UserGrupo(models.Model):
    integrante = models.ForeignKey(User, on_delete=models.CASCADE)
    grupo = models.ForeignKey(Grupo, on_delete=models.CASCADE)
    
    def __str__(self):
        return self.user.username

class Post(models.Model):
    title = models.CharField(max_length=100)
    contenido = models.TextField()
    category = models.CharField(max_length=50)
    thumbnail = models.ImageField(upload_to="posts", null=True)
    publish_date = models.DateTimeField(auto_now_add=True)
    last_update = models.DateTimeField(auto_now=True)
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    gru = models.ForeignKey(Grupo, on_delete=models.CASCADE)

    def __str__(self):
        return self.title

class Comment(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)
    timestamp = models.DateTimeField(auto_now_add=True)
    content = models.TextField()

    def __str__(self):
        return self.user.username

class PostView(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.user.username

class Like(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    post = models.ForeignKey(Post, on_delete=models.CASCADE)

    def __str__(self):
        return self.user.username



opciones_consultas = [
    [0, "Login"],
    [1, "Consulta"],
    [2, "Reclamo"],
    [3, "Sugerencia"],
    [4, "Agradecimiento"],
]
class Contacto(models.Model):
    nombre = models.CharField(max_length=50)
    correo = models.EmailField()
    telefono = models.IntegerField()
    tipo_consulta = models.IntegerField(choices=opciones_consultas)
    mensaje = models.TextField()

    def __str__(self):
        return self.nombre
