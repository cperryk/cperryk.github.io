---
layout: page
title: Clips
permalink: /clips/
---

<div class="container-fluid">

{% for cliphash in site.data.clips %}
{% assign id = cliphash[0] %}
{% assign clip = cliphash[1] %}

  {% assign remainder = forloop.index | modulo:3 %}
  {% if remainder == 1 or forloop.last %}
  <div class="row">
    {% endif %}
    <div class="col-md-4 clip">
      <a href="{{clip.url}}" target="_blank">
        <img src="{{id | prepend: site.baseurl | prepend: '/img/' | append: '.jpg' }}"/>
      </a>
      <h3><a href="{{clip.url}}" target="_blank">{{i}} {{clip.head}}</a></h3>
      <p>{{clip.desc}}</p>
    </div>
  {% if remainder == 0 or forloop.last %}
  </div><!-- end .row -->
  {% endif %}
{% endfor %}

</div><!-- end .container-fluid -->
