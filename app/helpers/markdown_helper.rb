module MarkdownHelper
  def markdown(text)
    @@md ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML,
                                         no_intra_emphasis: true,
                                         fenced_code_blocks: true,
                                         disable_indented_code_blocks: true,
                                         autolink: true,
                                         tables: true,
                                         underline: true,
                                         highlight: true
                                        )
    @@md.render(text).html_safe
  end
end
