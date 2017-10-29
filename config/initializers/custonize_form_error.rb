ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  html = %(<div class="field_with_errors">#{html_tag}</div>).html_safe

  form_fields = [
    'textarea',
    'input',
    'select'
  ]

  elements = Nokogiri::HTML::DocumentFragment.parse(html_tag).css "label, " + form_fields.join(', ')

  elements.each do |e|
    if e.node_name.eql? 'label'
      html = %(#{e}).html_safe
    elsif form_fields.include? e.node_name
      if instance.error_message.kind_of?(Array)
        e.attributes['class'].value = "#{e.attributes['class'].value} is-invalid"
        html = %(#{e}<div class="invalid-feedback">&nbsp;#{instance.error_message.uniq.join(', ')}</div>).html_safe
      else
        html = %(#{e}<div class="invalid-feedback">&nbsp;#{instance.error_message}</div>).html_safe
      end
    end
  end
  html
end