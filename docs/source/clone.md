---
layout: default
id: clone
title: Clone the repository
lang: en
---

# Repository

> **This page can be read in the following languages:**
> 
> [English](/beeping/clone.html) | [Spanish](/beeping/es/clone.html)

##### **Beeping** documentation is Open Source.

Here you have access to the main repository where all the documentation is located: {% link Beeping Documentation https://github.com/beeping-io/beeping true %}

#### Clone the GitHub repository

---

- Fork {% link our repository https://github.com/beeping-io/beeping true %}

- Clone the repository and install the dependencies:

{% codeblock %}
$ git clone https://github.com/<username>/beeping.git
$ cd beeping/docs
$ npm install
{% endcodeblock %}

- Create a new branch

{% codeblock %}
git checkout -b <new feature>
{% endcodeblock %}

- Start the **Hexo server**

{% codeblock %}
$ hexo server
{% endcodeblock %}

- To see the documents in your browser enter the following url:

{% codeblock %}
http://localhost:4000
{% endcodeblock %}

> At this point you can choose "**Review**" or "**Translate**" a document. Please, check the next sections to understand how to proceed.

#### Quote

---

A small body of determined spirit illuminated by an insatiable faith in its mission can alter the course of history.

**Mahatma Gandhi**
