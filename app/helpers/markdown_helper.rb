module MarkdownHelper
  def render_markdown(text)
    return "" if text.blank?
    # Renders markdown safely
    raw Commonmarker.to_html(text, options: { render: { unsafe: true } })
  end
end
