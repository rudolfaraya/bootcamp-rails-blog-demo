module ApplicationHelper
  def truncate_html(content, length = 150)
    sanitized_content = sanitize(content.to_s) # Limpia HTML para evitar scripts maliciosos
    truncated_content = truncate(strip_tags(sanitized_content), length: length)
    truncated_content.html_safe # Permite volver a renderizar como HTML seguro
  end
end
