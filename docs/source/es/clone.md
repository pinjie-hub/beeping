---
layout: default
id: clone
title: Clonar el repositorio
lang: es
---

# Repositorio documental

> **Esta página se puede leer en los siguiente idiomas:**
> 
> [Inglés](/beeping/clone.html) | [Español](/beeping/es/clone.html)

##### La documentación de **Beeping** es Open Source.

Aquí os dejamos el acceso al repositorio principal donde se encuentra toda la documentación: {% link Documentación de Beeping https://github.com/beeping-io/beeping true %}

#### Clonar el repositorio de GitHub

---

1. Haz un fork de {% link nuestro repositorio https://github.com/beeping-io/beeping true %}

2. Haz un clon del repositorio e instala las dependencias:

{% codeblock %}
$ git clone https://github.com/<username>/beeping.git
$ cd beeping/docs
$ npm install
{% endcodeblock %}

3. Arranca el servidor de Hexo:

{% codeblock %}
$ hexo server
{% endcodeblock %}

4. Para ver los documentos en tu navegador entra la siguiente url:

{% codeblock %}
http://localhost:4000
{% endcodeblock %}

#### Frase

---

Un pequeño cuerpo de espíritu decidido iluminado por una fe insaciable en su misión puede alterar el curso de la historia.

**Mahatma Gandhi**
