{% include 'baidu-push.swig' %}

{% include 'rating.swig' %}

{%- if theme.algolia_search.enable %}
  {% include 'search/algolia-search.swig' %}
{% elif theme.swiftype_key %}
  {% include 'search/swiftype.swig' %}
{% elif theme.local_search.enable %}
  {% include 'search/localsearch.swig' %}
{%- endif %}

{% include 'chat/chatra.swig' %}
{% include 'chat/tidio.swig' %}

{% include 'tags/pdf.swig' %}
{% include 'tags/mermaid.swig' %}

{% if theme.google_adsense.enable %}
  {% include 'google_adsense.swig' %}
{% endif %}

{% if theme.cusdis.app_id %}
  {%include 'comments/cusdis.swig' %}
{% endif %}