---
layout: default
id: translate
title: Translations
lang: en
---

# Translations

> **This page can be read in the following languages:**
> 
> [Inglés](/beeping/translate.html) | [Español](/beeping/es/translate.html) | [中文](/beeping/zh-CN/translate.html)

To translate a document into a new language, the first thing you should do is create a new language file.

#### Language file

---

> In the event that these files exist you should do nothing more than review the translation.

Enter the language directory:

{% codeblock %}
$ cd beeping/docs/themes/beeping/languages
{% endcodeblock %}

Here you will find different files of type xx.yml. The first thing you have to do is create a new file with the language code you are going to translate.

For example, to create a new language - German - :

{% codeblock %}
$ touch de.yml
{% endcodeblock %}

Once we have created the language file, what you need to do is edit it and modify the language code to which you are going to translate.

{% codeblock %}
nav: xx
{% endcodeblock %}

For example, to add the German language we will write:

{% codeblock %}
nav: de
{% endcodeblock %}


Once you have created the language file, **we must create a new menu**.

#### New Menu

---

We enter the menu directory:

{% codeblock %}
$ cd beeping/docs/source/_data_
{% endcodeblock %}

Here you will find different files of type xx.yml.

What you should do now is copy a source file xx.yml to the new language:

For example, to create a new language - German -, where the origin of the translation is English:

{% codeblock %}
$ cp en.yml de.yml
{% endcodeblock %}

Once done the above we edit the file and you will find something similar to what comes next:

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

> The **title** tag contains the word shown in the menu.
 
> We must also modify the **href** tag and modify the language code: href: /beeping/**de**/translate.html

#### New documents

---

To translate the documents, we must first enter the directory where they are stored:

{% codeblock %}
$ cd beeping/docs/source/
{% endcodeblock %}

Here you will find all the documents of type MarkDown - .md - in the root.

> The documentation that is at the root is written in English. These are the only files that should not go inside any language folder.

To create new documents in the new language, we must copy the source documents - the language from which it will be translated - into the new language folder. Here is an example.

{% codeblock %}
$ mkdir de
$ cp -R es/* de/
{% endcodeblock %}

Once we have copied the documents we access the folder from where we are going to work:

{% codeblock %}
$ cd de
{% endcodeblock %}

#### Structure of a document

---

A document has two parts, the **Metadata** and the **Content**.

**The Metadata** is in the initial part of the document and has the following format:

{% codeblock %}
---
layout: default
id: requirements
title: Requisitos
lang: es
---
{% endcodeblock %}

> The only thing we need to modify from the Metadata is the **lang** tag to the new language code: **lang: de**

**The content** is written in MarkDown language, so we only have to translate the text itself. Once you have made the modifications that you deem appropriate, send a **"Pull Request"** of the changes so that we can see the changes and publish the new content online.

#### Quote
---

Choose a job you love and you won't have to work any day of your life.

**Confucio**
