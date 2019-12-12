---
layout: default
id: translate
title: Traducciones
lang: cn
---

# 翻译

> **网页可切换各种语言:**
> 
> [Inglés](/beeping/translate.html) | [Español](/beeping/es/translate.html) | [中文](/beeping/zh-CN/translate.html)

要将文档翻译成一种新语言，首先要做的是创建一个新的语言文件.

#### 语言文件

---

> 如果这些文件存在，您只需要检查翻译.

进入语言目录:

{% codeblock %}
$ cd beeping/docs/themes/beeping/languages
{% endcodeblock %}

在这里您可以找到各种类型的xx.yml文件。首先要做的是创建一个新文件，其中包含要翻译的语言代码.

例如，创建一种新的语言 - 德语 - :

{% codeblock %}
$ touch de.yml
{% endcodeblock %}

创建语言文件后，您需要做的就是对其进行编辑，然后修改您要翻译成的语言代码.

{% codeblock %}
nav: xx
{% endcodeblock %}

例如，要添加德语，我们将键入:

{% codeblock %}
nav: de
{% endcodeblock %}

一旦您创建了语言文件, **我们必须创建一个新菜单.**

#### 新菜单

---

进入菜单目录:

{% codeblock %}
$ cd beeping/docs/source/_data_
{% endcodeblock %}

在这里您将遇到不同类型的文件 xx.yml.

现在要做的是复制一个源文件xx.yml到新语言:

例如，创建一种新的语言——德语，其中翻译的起源是英语:

{% codeblock %}
$ cp en.yml de.yml
{% endcodeblock %}

完成上述操作后，我们编辑该文件，您将发现类似于下面的内容:

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

> 标签 **title** 包含菜单中显示的单词. 
 
> 我们还必须修改标签 **href** 修改语言代码: href: /beeping/**de**/translate.html

#### 新文档

---

要翻译文档，首先必须进入存储文档的目录:

{% codeblock %}
$ cd beeping/docs/source/
{% endcodeblock %}

在这里您可以找到所有类型的文档 MarkDown - .md - en la raíz. 

> 根文档是用英语编写的.这些是唯一不应该进入任何语言文件夹的文件.

要用新语言创建新文档，我们需要做的是将源文档(要翻译的语言)复制到新语言文件夹中,这里有一个例子.

{% codeblock %}
$ mkdir de
$ cp -R es/* de/
{% endcodeblock %}

一旦我们复制了文档，我们就可以访问我们要工作的文件夹:

{% codeblock %}
$ cd de
{% endcodeblock %}

#### 文档的结构

---

一份文件有两部分, el **Metadata(元数据)** y el **Contenido（内容）**.

**内容** 它位于文档的开头，格式如下:

{% codeblock %}
---
layout: default
id: requirements
title: Requisitos
lang: es
---
{% endcodeblock %}

> 我们唯一需要修改的元数据是**lang**标记到新的语言代码: **lang: de**

**内容** 它是用标记语言写的，所以我们只需要翻译文本本身.一旦你做了你认为合适的修改, 进行 **"Pull Request"** 更改，以便我们可以看到更改并在网上发布新内容.

#### 引用
---

选择一份你喜欢的工作，你就不必在生活中的任何一天工作.

**孔子（Confucio）**
