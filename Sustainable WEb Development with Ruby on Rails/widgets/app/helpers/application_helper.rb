module ApplicationHelper
  def widget_rating_component(_widget, suppress_cta: false)
    render partial: 'widgets/rating',
           locals: { widget_presenter: @widget_presenter, suppress_cta: }
  end

  def styled_widget_id(formatted_id)
    content_tag(:span, formatted_id, style: 'font-family: monospace;')
  end
end
