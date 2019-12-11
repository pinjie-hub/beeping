---
layout: default
id: translate
title: Traducciones
lang: es
---

# Traducciones

> **Esta página se puede leer en los siguiente idiomas:**
> 
> [Inglés](/beeping/translate.html) | [Español](/beeping/es/translate.html)

Para hacer la traducción de un documento en una nueva lengua lo primero que debes hacer es crear un nuevo fichero de lenguaje.

#### Fichero de lenguaje

---

> En el caso de que existan estos ficheros no debes hacer nada más que revisar la traducción.

Entrar en el directorio de lenguajes:

{% codeblock %}
$ cd beeping/docs/themes/beeping/languages
{% endcodeblock %}

Aquí te encontrarás con distintos archivos de tipo xx.yml. Lo primero que tienes que hacer es crear un nuevo fichero con el código de lenguaje al que vas a traducir.

Por ejemplo, para crear una nueva lengua - el alemán - :

{% codeblock %}
$ touch de.yml
{% endcodeblock %}

Una vez hayamos creado el fichero de lenguaje lo que hay que hacer es editarlo y modificar el código de lenguaje al que vas a traducir.

{% codeblock %}
nav: xx
{% endcodeblock %}

Por ejemplo, para añadir la lengua alemana escribiremos:

{% codeblock %}
nav: de
{% endcodeblock %}

Una vez hayas creado el fichero de lenguaje, **debemos crear un nuevo menú.**

#### Nuevo menú

---

Entramos en el directorio de menús:

{% codeblock %}
$ cd beeping/docs/source/_data_
{% endcodeblock %}

Aquí te encontrarás con distintos archivos de tipo xx.yml.

Lo que debes hacer ahora es copiar un fichero origen xx.yml a la nueva lengua:

Por ejemplo, para crear una nueva lengua - el alemán -, donde el origen de la traducción es el inglés:

{% codeblock %}
$ cp en.yml de.yml
{% endcodeblock %}

Una vez hecho lo anterior editamos el fichero y te encontrarás algo similar a lo que viene a continuación:

{% codeblock %}
- title: Beeping
  items:
  - id: index
    title: Bienvenido
    href: /beeping/es/index.html
  - id: description
    title: Overview
    href: /beeping/es/description.html
  - id: license
    title: Licencia
    href: /beeping/es/license.html  
  - id: links
    title: Accesos
    href: /beeping/es/links.html
  
- title: Contribuciones
  items:
    - id: contributors
      title: Cómo Ayudar
      href: /beeping/es/contributors.html
    - id: requirements
      title: Requisitos
      href: /beeping/es/requirements.html
    - id: clone
      title: Clonación
      href: /beeping/es/clone.html
    - id: review
      title: Revisiones
      href: /beeping/es/review.html
    - id: translate
      title: Traducciones
      href: /beeping/es/translate.html
{% endcodeblock %}

> El tag **title** contiene la palabra que se muestra en el menú. 
 
> También debemos modificar el tag **href** y modificar el código de lenguaje: href: /beeping/**de**/translate.html

#### Nuevos documentos

---

Para traducir los documentos, primero debemos entrar en el directorio donde se almacenan:

{% codeblock %}
$ cd beeping/docs/source/
{% endcodeblock %}

Aquí encontrarás todos los documentos de tipo MarkDown - .md - en la raíz. 

> La documentación que está en la raíz está escrita en Inglés. Estos son los únicos ficheros que no deben ir dentro de ninguna carpeta de lenguaje.

Para crear nuevos documentos en la nueva lengua lo que debemos hacer es copiar los documentos origen - la lengua desde donde se va a traducir - en la nueva carpeta de lengua. Aquí os dejamos un ejemplo.

{% codeblock %}
$ mkdir de
$ cp -R es/* de/
{% endcodeblock %}

Una vez hayamos copiado los documentos accedemos a la carpeta desde donde vamos a trabajar:

{% codeblock %}
$ cd de
{% endcodeblock %}

#### Estructura de un documento

---

Un documento tiene dos partes, el **Metadata** y el **Contenido**.

**El Metadata** se encuentra en la parte inicial del documento y tiene el siguiente formato:

{% codeblock %}
---
layout: default
id: requirements
title: Requisitos
lang: es
---
{% endcodeblock %}

> Lo único que debemos modificar del Metadata es el tag **lang** al nuevo código de lenguaje: **lang: de**

**El contenido** está escrito en lenguaje de MarkDown, con lo que sólo nos quedará hacer la traducción del propio texto. 

#### Pull Request

---

"**Commit**" y "**push**" el código fuente.

{% codeblock %}
$ git commit -a -m "new feature"
$ git push origin <branch_name>
{% endcodeblock %}

> Una vez hayas hecho las modificaciones que creas conveniente, haz un **"Pull Request"** de los cambios para que podamos ver los cambios y publicar el nuevo contenido online.

#### Frase
---

Elige un trabajo que ames y no tendrás que trabajar ningún día de tu vida.

**Confucio**
