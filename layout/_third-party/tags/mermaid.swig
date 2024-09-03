{%- if theme.mermaid.enable %}
{%- set mermaid_uri = theme.vendors.mermaid or '//cdn.jsdelivr.net/npm/mermaid@11/dist/mermaid.min.js' %}
<script{{ pjax }}>
if (document.querySelectorAll('code.mermaid').length) {
  NexT.utils.getScript('{{ mermaid_uri }}', () => {
    mermaid.initialize({
      theme    : '{{ theme.mermaid.theme }}',
      logLevel : 3,
      flowchart: { curve     : 'linear' },
      gantt    : { axisFormat: '%m/%d/%Y' },
      sequence : { actorMargin: 50 }
    });
  }, window.mermaid);
}
</script>
<style>
pre:has(.mermaid) {
  background: transparent;
}
code.highlight.mermaid {
  background: transparent;
}
</style>
{%- endif %}
